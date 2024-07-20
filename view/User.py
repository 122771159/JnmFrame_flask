import json
import os
import tempfile
import time

from flask import Blueprint, request, g, current_app
from marshmallow import ValidationError

from common.redis_client import get_redis_client
from common.schemas import UserSchema, format_validation_error
from common.R import fail, success
from exts import db
from model import User, Url, UrlSerializer, RoleSerializer, PermSerializer, UserSerializer, Role
from utils.jwtUtils import create_token
from utils.qiniuUtils import upload_qiniu_yun
from utils.urlUtils import transform_data_url, loadSuperUrl

UserBp = Blueprint('UserBp', __name__, url_prefix='/user')


@UserBp.route('/login', methods=['POST'])
def login():
    json_data = request.get_json()
    if not json_data:
        return fail("没有提供输入数据")
    user_schema = UserSchema()
    try:
        data = user_schema.load(json_data)
        user = User.query.filter_by(username=data['username']).first()

        if not user:
            return fail("没有此用户")
        if not user.check_password(data['password']):
            return fail("密码错误")
        if len(user.roles) > 0:
            role = user.roles[0]
            perms = role.perms
            role = RoleSerializer().dump(role)
            perms = PermSerializer(many=True).dump(perms)

        else:
            role = []
            perms = []
        EXPIRES = 60 * 60 * 24  # 24小时（以秒为单位）
        if 'rememberMe' in json_data:
            EXPIRES = 60 * 60 * 24 * 365
        user_exp_time = (time.time() + EXPIRES)
        user_exp_time = int(user_exp_time)
        user = {
            'id': user.id,
            'username': user.username,
            'name': user.name,
            'avatar': user.avatar,
            'exp': user_exp_time,
            # 'exp': time.time() + 10,
            'role': role,
        }
        jwt = create_token(user)
        data = json.dumps({
            "id": user['id'],
            "exp": user_exp_time
        })
        redis_client = get_redis_client()
        redis_client.set(jwt, data, EXPIRES)
        redis_client.set(f"role{user['id']}", json.dumps(data))
        res = {
            'token': jwt,
            'user': user,
            'exp': user_exp_time,
            'urls': [],
            'perms': perms,
        }
        return success(res)
    except ValidationError as err:
        return fail(format_validation_error(err))


@UserBp.route('/urls', methods=['GET'])
def get_urls():
    user_id = g.user_info['id']
    if user_id == 1:
        urls = Url.query.all()
    else:
        user = User.query.filter_by(id=user_id).first()
        role = user.roles[0]
        urls = role.urls
        urls_ids = loadSuperUrl(urls)
        urls = Url.query.filter(Url.id.in_(urls_ids)).all()
    urls_schema = UrlSerializer(many=True)
    urls = urls_schema.dump(urls)

    return success(transform_data_url(urls))


@UserBp.route('/perms', methods=['GET'])
def get_perms():
    user_id = g.user_info['id']
    user = User.query.filter_by(id=user_id).first()
    if len(user.roles) <= 0:
        return success([])
    role = user.roles[0]
    perms = role.perms
    perms = PermSerializer(many=True).dump(perms)
    return success(perms)


@UserBp.route('/users', methods=['GET'])
def get_users():
    users = User.query.filter(User.id != 1).all()
    serializer = UserSerializer(many=True)
    users = serializer.dump(users)
    return success(users)


@UserBp.route('/get_user', methods=['POST'])
def get_user():
    id = g.data['id']
    user = User.query.filter_by(id=id).first()
    if not user:
        return fail("不存在此用户")
    role = []
    if len(user.roles) > 0:
        role = [user.roles[0].id]
    user = UserSerializer().dump(user)
    user['roles'] = role
    return success(user)


@UserBp.route('/change_user', methods=['POST'])
def change_user():
    user_data = g.data

    # 提取用户ID
    id = user_data.get('id')
    if not id:
        return fail("未提供用户ID")

    # 查询用户
    user = User.query.filter_by(id=id).first()
    if not user:
        return fail("用户不存在")

    # 更新用户信息
    if 'username' in user_data:
        user.username = user_data['username']
    if 'password' in user_data and user_data['password'] != '':
        user.password = user_data['password']
    if 'name' in user_data:
        user.name = user_data['name']
    if 'avatar' in user_data:
        user.avatar = user_data['avatar']
    if 'qq' in user_data:
        user.qq = user_data['qq']
    if 'forbidden' in user_data:
        user.forbidden = user_data['forbidden']

    # 更新用户角色
    if 'roles' in user_data:
        user.roles = []
        for role_id in user_data['roles']:
            role = Role.query.filter_by(id=role_id).first()
            if role:
                user.roles.append(role)

    try:
        db.session.commit()
        return success("用户信息更新成功")
    except Exception as e:
        db.session.rollback()
        return fail(f"用户信息更新失败: {str(e)}")

@UserBp.route('/edit_user',methods=["POST"])
def edit_user():
    user_id = g.user_info['id']
    data = g.data
    user = User.query.filter_by(id=user_id).first()
    if not user:
        return fail("没有找到用户")
    if user.password != data['password']:
        return fail("密码错误")
    if data['topassword'] != data['repassword']:
        return fail("两次输入密码不一致")
    user.username = data['username']
    user.name = data['name']
    user.password = data['password']
    db.session.commit()
    return success("修改成功")
@UserBp.route('/add_user', methods=['POST'])
def add_user():
    user_data = g.data
    user = User(username=user_data['username'], password=user_data['password'], name=user_data['name'])
    db.session.add(user)
    db.session.commit()
    return success("保存成功,默认密码为123456，请修改")


@UserBp.route('/delete_user', methods=['POST'])
def delete_user():
    user_data = g.data
    user_id = user_data.get('id')
    if not user_id:
        return fail("非法访问")
    if user_id == 1:
        return fail("超级管理员不可以删除")
    user = User.query.filter_by(id=user_id).first()
    if not user:
        return fail("没有此用户")
    db.session.delete(user)
    db.session.commit()
    return success("删除成功")


@UserBp.route('/change_avatar', methods=['POST'])
def change_avatar():
    user_id = g.user_info['id']
    file = request.files.get('file')
    if not file:
        return fail("没有提供文件")
    with tempfile.NamedTemporaryFile(delete=False) as temp_file:
        file_path = temp_file.name
        file.save(file_path)
    # current_app.logger.info(file_path)
    try:
        url = upload_qiniu_yun(file_path, user_id)
        user = User.query.filter_by(id=user_id).first()
        user.avatar = url
        db.session.commit()
        return success({'msg': "上传成功", 'data':url })
    finally:
        if os.path.exists(file_path):
            os.remove(file_path)
