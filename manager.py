import json
import logging
from logging.handlers import RotatingFileHandler

from flask import jsonify, request, g

from Exception import AuthDeniedException
from Exception.jwt.JwtExpiredException import JWTExpiredException
from app import creatApp
from common.redis_client import get_redis_client
from exts import db
from flask_cors import CORS
from flask_migrate import Migrate

from model import User
from utils.jwtUtils import get_payload


def setup_logging(app):
    handler = RotatingFileHandler('app.log', maxBytes=10000, backupCount=1)
    handler.setLevel(logging.INFO)
    app.logger.addHandler(handler)


app = creatApp()
setup_logging(app)
app.logger.info('App has started')
except_jwt = ['login', 'register', 'logout']


@app.before_request
def jwt_authentication():
    if request.method == 'OPTIONS':
        return
    g.data = request.get_json(silent=True)
    g.get_data = request.args
    for i in except_jwt:
        if i in request.path:
            g.user_info = None
            return
    token = request.headers.get('Authorization')
    client = get_redis_client()
    if not client.get(token):
        raise JWTExpiredException()
    g.user_info = get_payload(token)


@app.before_request
def authorization():
    if request.method == 'OPTIONS':
        return
    return  # 先关闭
    if not g.user_info:  # 如果没有jwt解析的信息或者id为超级管理员，直接下一步
        return
    if g.user_info['id'] == 1:
        return
    try:
        user = User.query.filter_by(id=g.user_info['id']).first()
        role = user.roles[0]
        perms = role.perms
        for i in perms:
            ps = json.loads(i.url)
            for o in ps:
                if request.path == o:
                    return
        raise AuthDeniedException()
    except Exception as e:
        app.logger.error(e)
        raise AuthDeniedException()

CORS(app, supports_credentials=True)
migrate = Migrate(app, db)


@app.route('/')
# @login_required
def hello_world():  # put application's code here
    routes = []
    for rule in app.url_map.iter_rules():
        routes.append({
            "endpoint": rule.endpoint,
            "methods": list(rule.methods),
            "url": rule.rule
        })
    return jsonify(routes)


if __name__ == '__main__':
    app.run(debug=True)
