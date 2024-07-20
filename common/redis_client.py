import redis


def init_redis_client(app):
    redis_client = redis.StrictRedis(
        host=app.config['REDIS_HOST'][0],
        port=app.config['REDIS_PORT'][0],
        decode_responses=True  # 自动解码响应为字符串
    )
    app.extensions['redis_client'] = redis_client


def get_redis_client():
    from flask import current_app
    return current_app.extensions['redis_client']
