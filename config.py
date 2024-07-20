class Config(object):
    ENV = 'development'
    DEBUG = True
    SQLALCHEMY_DATABASE_URI = "mysql+pymysql://root:root@127.0.0.1:3306/jump_score"
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SQLALCHEMY_ECHO = False
    SECRET_KEY = 'kfi3987uhyper78uju76unit7Shuji98'
    JSONIFY_MIMETYPE = "application/json;charset=utf-8"
    JSON_AS_ASCII = False,
    REDIS_HOST = 'localhost',
    REDIS_PORT = 6379,






