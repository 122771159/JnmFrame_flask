from datetime import datetime

from marshmallow import EXCLUDE, fields
from marshmallow_sqlalchemy import SQLAlchemyAutoSchema

from exts import db

user_role = db.Table('jnm_user_role',
                     db.Column('user_id', db.Integer, db.ForeignKey('jnm_user.id'), primary_key=True),
                     db.Column('role_id', db.Integer, db.ForeignKey('jnm_role.id'), primary_key=True)
                     )
role_url = db.Table('jnm_role_url',
                    db.Column('role_id', db.Integer, db.ForeignKey('jnm_role.id'), primary_key=True),
                    db.Column('url_id', db.Integer, db.ForeignKey('jnm_url.id'), primary_key=True)
                    )
role_perm = db.Table('jnm_role_perm',
                     db.Column('role_id', db.Integer, db.ForeignKey('jnm_role.id'), primary_key=True),
                     db.Column('perm_id', db.Integer, db.ForeignKey('jnm_perm.id'), primary_key=True)
                     )


class User(db.Model):
    __tablename__ = 'jnm_user'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(255), nullable=True, default=None)
    username = db.Column(db.String(50), nullable=False, unique=True)
    password = db.Column(db.String(200), nullable=False)
    create_time = db.Column(db.DateTime, default=datetime(1997, 1, 1, 0, 0, 0))
    update_time = db.Column(db.DateTime, default=datetime(1997, 1, 1, 0, 0, 0))
    delete_time = db.Column(db.DateTime, nullable=True, default=None)
    avatar = db.Column(db.String(255), nullable=True,
                       default='https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png')
    qq = db.Column(db.String(20), nullable=True, default=None)
    key = db.Column(db.String(50), nullable=True, default=None)
    qrcode = db.Column(db.String(255), nullable=True, default=None)
    timeout = db.Column(db.Integer, nullable=True, default=180)
    forbidden = db.Column(db.Integer, nullable=True, default=0)
    roles = db.relationship('Role', secondary=user_role, lazy='subquery',
                            backref=db.backref('users', lazy=True))

    def __init__(self, username, password, name=None, avatar=None, qq=None, key=None, qrcode=None, timeout=180,
                 forbidden=False):
        self.username = username
        self.password = password
        self.name = name
        self.avatar = avatar
        self.qq = qq
        self.key = key
        self.qrcode = qrcode
        self.timeout = timeout
        self.forbidden = forbidden

    def check_password(self, password):
        if self.password == password:
            return True
        return False


class Url(db.Model):
    __tablename__ = 'jnm_url'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True, nullable=False)
    parentid = db.Column(db.Integer, nullable=True)
    icon = db.Column(db.String(50), nullable=True)
    isshow = db.Column(db.String(50), nullable=True)
    menuid = db.Column(db.String(50), nullable=True)
    path = db.Column(db.String(50), nullable=True)
    meta = db.Column(db.String(255), nullable=True)
    redirect = db.Column(db.String(50), nullable=True)

    def __init__(self, parentid=None, icon=None, isshow=None, menuid=None, path=None, meta=None, redirect=None):
        self.parentid = parentid
        self.icon = icon
        self.isshow = isshow
        self.menuid = menuid
        self.path = path
        self.meta = meta
        self.redirect = redirect


class Role(db.Model):
    __tablename__ = 'jnm_role'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True, nullable=False)
    name = db.Column(db.String(50), nullable=False, comment='角色名称')
    urls = db.relationship('Url', secondary=role_url, lazy='subquery',
                           backref=db.backref('roles', lazy=True))
    perms = db.relationship('Perm', secondary=role_perm, lazy='subquery',
                            backref=db.backref('roles', lazy=True))

    def __init__(self, name):
        self.name = name


class Perm(db.Model):
    __tablename__ = 'jnm_perm'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True, nullable=False)
    perm = db.Column(db.String(50), nullable=True)
    url = db.Column(db.String(200), nullable=True)
    other = db.Column(db.String(50), nullable=True)

    def __init__(self, perm=None, url=None, other=None):
        self.perm = perm
        self.url = url
        self.other = other


class UrlSerializer(SQLAlchemyAutoSchema):
    class Meta:
        model = Url  # 配置对应的模型
        ordered = True  # 设置是否排序
        include_fk = True  # 是否包含外键
        unknown = EXCLUDE  # 未知字段序列化选项
        # exclude = ("name",)  # 序列化不需要的字段，反之对应的是include


class RoleSerializer(SQLAlchemyAutoSchema):
    class Meta:
        model = Role  # 配置对应的模型
        ordered = True  # 设置是否排序
        include_fk = True  # 是否包含外键
        unknown = EXCLUDE  # 未知字段序列化选项


class PermSerializer(SQLAlchemyAutoSchema):
    class Meta:
        model = Perm  # 配置对应的模型
        ordered = True  # 设置是否排序
        include_fk = True  # 是否包含外键
        unknown = EXCLUDE  # 未知字段序列化选项


class UserSerializer(SQLAlchemyAutoSchema):
    create_time = fields.DateTime(format='%Y-%m-%d %H:%M:%S')
    update_time = fields.DateTime(format='%Y-%m-%d %H:%M:%S')
    delete_time = fields.DateTime(format='%Y-%m-%d %H:%M:%S')

    class Meta:
        model = User  # 配置对应的模型
        ordered = True  # 设置是否排序
        include_fk = True  # 是否包含外键
        unknown = EXCLUDE  # 未知字段序列化选项
        exclude = ("password",)  # 序列化不需要的字段，反之对应的是include
