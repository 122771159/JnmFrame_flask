import json
import time

from flask import Blueprint, request, g, current_app
from marshmallow import ValidationError

from common.redis_client import get_redis_client
from common.schemas import UserSchema, format_validation_error
from common.R import fail, success
from exts import db
from model import User, Url, UrlSerializer, RoleSerializer, PermSerializer, UserSerializer, Role, Perm
from utils.jwtUtils import create_token
from utils.urlUtils import transform_data_url, loadSuperUrl

RoleBp = Blueprint('RoleBp', __name__, url_prefix='/role')


@RoleBp.route('/roles', methods=['GET', 'POST'])
def get_roles():
    roles = Role.query.all()
    serializer = RoleSerializer(many=True)
    roles = serializer.dump(roles)
    return success(roles)


@RoleBp.route('/urls', methods=['GET', 'POST'])
def get_urls():
    data = g.get_data

    if 'role_id' in json.dumps(data):
        role_id = data['role_id']
        role = Role.query.get(role_id)
        if not role:
            return fail("role id is not found")
        urls = role.urls
        urls_ids = loadSuperUrl(urls)
        urls = Url.query.filter(Url.id.in_(urls_ids)).all()
    else:
        urls = Url.query.all()
    serializer = UrlSerializer(many=True)
    urls = serializer.dump(urls)
    return success(transform_data_url(urls))


@RoleBp.route('/change_url', methods=['POST'])
def change_url():
    data = g.data
    data = data['url']
    if data.get('id'):
        url = Url.query.get(data['id'])
        if not url:
            return fail("url is not found")
        if data.get('parentid'):
            url.parentid = data['parentid']
            parent_url = Url.query.get(data['parentid'])
            if parent_url:
                parent_url.roles.clear()
        url.icon = data.get('icon')
        url.isshow = data.get('isshow')
        url.menuid = data.get('menuid')
        url.path = data.get('path')
        url.redirect = data.get('redirect')
        url.meta = json.dumps(data.get('meta'), ensure_ascii=False)
    else:
        url = Url(
            meta=json.dumps(data.get('meta'), ensure_ascii=False)
        )
        db.session.add(url)
    db.session.commit()
    return success("保存成功")


@RoleBp.route('/delete_add_urls', methods=['POST'])
def delete_add_urls():
    data = g.data
    role_id = data['role_id']
    url_ids = data['urls']
    role = Role.query.get(role_id)
    role.urls.clear()
    if url_ids:
        for url_id in url_ids:
            url = Url.query.get(url_id)
            if url:
                role.urls.append(url)
    db.session.commit()
    return success("保存成功")


@RoleBp.route('/add_role', methods=['POST'])
def add_role():
    data = g.data
    name = data['name']
    role = Role(name=name)
    db.session.add(role)
    db.session.commit()
    return success("保存成功")


@RoleBp.route('/change_name_role', methods=['POST'])
def change_name_role():
    data = g.data
    name = data['name']
    role_id = data['id']
    role = Role.query.get(role_id)
    role.name = name
    db.session.commit()
    return success("保存成功")


@RoleBp.route('/delete_role', methods=['POST'])
def delete_role():
    data = g.data
    role_id = data['id']
    role = Role.query.get(role_id)
    if not role:
        return fail('角色不存在')
    if len(role.users) > 0:
        return fail('有用户在使用这个角色，不能删除')
    role.perms.clear()
    role.urls.clear()
    db.session.delete(role)
    db.session.commit()
    return success("删除成功")


@RoleBp.route('/delete_url', methods=['POST'])
def delete_url():
    data = g.data
    url_id = data['id']
    urls = Url.query.all()
    for i in urls:
        if i.parentid == url_id:
            return fail("有子页面在使用这个页面，不能删除")
    url = Url.query.get(url_id)
    if len(url.roles) > 0:
        return fail("有角色在使用这个页面，不能删除")
    db.session.delete(url)
    db.session.commit()
    return success("删除成功")


@RoleBp.route('/perms')
def get_perms():
    return success(PermSerializer(many=True).dump(Perm.query.all()))


@RoleBp.route('/add_perm', methods=['POST'])
def add_perm():
    data = g.data
    other = data['other']
    perm = data['perm']
    url = data['url']
    perm = Perm(perm=perm, url=url, other=other)
    db.session.add(perm)
    db.session.commit()
    return success("保存成功")


@RoleBp.route('/change_perm', methods=['POST'])
def change_perm():
    data = g.data
    perm = Perm.query.get(data['id'])
    if data.get('other'):
        perm.other = data['other']
    if data.get('url'):
        perm.url = data['url']
    if data.get('perm'):
        perm.perm = data['perm']
    db.session.commit()
    return success("保存成功")


# delete_perm
@RoleBp.route('/delete_perm', methods=['POST'])
def delete_perm():
    data = g.data
    perm = Perm.query.get(data['id'])
    if len(perm.roles) > 0:
        return fail("有角色在使用此权限")
    db.session.delete(perm)
    db.session.commit()
    return success("删除成功")

@RoleBp.route('/perms_id', methods=['GET','POST'])
def get_perms_id():
    data = g.get_data
    role_id = data['id']
    role = Role.query.get(role_id)
    perms = role.perms
    return success(PermSerializer(many=True).dump(perms))

# delete_add_perms
@RoleBp.route('/delete_add_perms', methods=['POST'])
def delete_add_perms():
    data = g.data
    role_id = data['role_id']
    perms = data['perms']
    role = Role.query.get(role_id)
    role.perms.clear()
    for perm in perms:
        role.perms.append(Perm.query.get(perm))
    db.session.commit()
    return success("保存成功")
