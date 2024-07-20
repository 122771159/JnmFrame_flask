from Exception import CommonException
from common.StatusCodeEnum import StatusCodeEnum


class JWTExpiredException(CommonException):
    def __init__(self):
        super().__init__(
            code=1,
            message="登录不存在或者已过期",
            http_status=StatusCodeEnum.UNAUTHORIZED.value  # 暂时这样
        )
        self.success = False
        self.status = 1
        self.status_info = {
            "message": "登录不存在或者已过期"
        }
        self.http_status = StatusCodeEnum.UNAUTHORIZED.value
