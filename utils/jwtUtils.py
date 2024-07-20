import jwt

from Exception.jwt import JWTDecodeErrorException, JWTIllegalityException
from Exception.jwt.JwtExpiredException import JWTExpiredException
from config import Config

SALT = Config.SECRET_KEY


def create_token(payload):
    # header
    headers = {
        'typ': 'jwt',
        'alg': 'HS256'
    }
    result = jwt.encode(headers=headers, payload=payload, key=SALT, algorithm=["HS256"])
    return result


def get_payload(token):
    try:
        # 校验token合法性和是否超时
        verified_payload = jwt.decode(jwt=token, key=SALT, verify=True, algorithms=["HS256"])
        return verified_payload
    except jwt.ExpiredSignatureError:
        raise JWTExpiredException()
    except jwt.DecodeError:
        raise JWTDecodeErrorException()
    except jwt.InvalidTokenError:
        raise JWTIllegalityException()
