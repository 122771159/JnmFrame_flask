from Exception import CommonException
from common.StatusCodeEnum import StatusCodeEnum


class JWTDecodeErrorException(CommonException):
    def __init__(self):
        super().__init__(
            code=1,
            message="登录认证失败",
            http_status=StatusCodeEnum.UNAUTHORIZED.value  # 暂时这样
        )
        self.success = False
        self.status = 1
        self.status_info = {
            "message": "登录认证失败"
        }
        self.http_status = StatusCodeEnum.UNAUTHORIZED.value


class JWTIllegalityException(CommonException):
    def __init__(self):
        super().__init__(
            code=1,
            message="非法登录",
            http_status=StatusCodeEnum.UNAUTHORIZED.value  # 暂时这样
        )
        self.success = False
        self.status = 1
        self.status_info = {
            "message": "非法登录"
        }
        self.http_status = StatusCodeEnum.UNAUTHORIZED.value