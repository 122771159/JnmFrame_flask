from flask import Flask

from Exception import CommonException
from common.error_handlers import handle_base_exception
from common.redis_client import init_redis_client
from config import Config
from exts import db
from view.Role import RoleBp
from view.User import UserBp


def creatApp():
    app = Flask(__name__, template_folder='../static/dict', static_folder='../static/dict/', static_url_path="")

    app.config.from_object(Config)
    app.register_error_handler(CommonException, handle_base_exception)
    db.init_app(app)
    # app.register_blueprint(list_bp)
    app.register_blueprint(UserBp)
    app.register_blueprint(RoleBp)
    init_redis_client(app)

    return app
