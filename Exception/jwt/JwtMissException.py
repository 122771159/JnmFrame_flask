from Exception import CommonException
from common.StatusCodeEnum import StatusCodeEnum


class JWTMissException(CommonException):
    def __init__(self):
        super().__init__(
            code=1,
            message="Token不能为空",
            http_status=StatusCodeEnum.UNAUTHORIZED.value  # 暂时这样
        )
        self.success = False
        self.status = 1
        self.status_info = {
            "message": "Token不能为空"
        }
        self.http_status = StatusCodeEnum.UNAUTHORIZED.value
