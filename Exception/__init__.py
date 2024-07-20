from common.StatusCodeEnum import StatusCodeEnum


class CommonException(Exception):
    def __init__(self, message=None, code=1, http_status=500):
        self.success = False
        self.status = 1  # 本系统 1 代表失败
        self.status_info = {
            "message": "服务器正忙"
        }
        self.http_status = StatusCodeEnum.INTERNAL_SERVER_ERROR.value

        if message is not None:
            self.status_info = {
                "message": message
            }
        if code is not None:
            if not isinstance(code, (int, float)):
                code = 1
            self.status = code
        if http_status is not None:
            if not isinstance(http_status, (int, float)):
                http_status = 500
            self.http_status = http_status

        super().__init__(message if message is not None else self.status_info["message"], http_status)


class QiniuException(CommonException):
    def __init__(self):
        super().__init__(
            code=1,
            message="上传文件失败",
            http_status=StatusCodeEnum.BAD_REQUEST.value  # 暂时这样
        )
        self.success = False
        self.status = 1
        self.status_info = {
            "message": "上传文件失败"
        }
        self.http_status = StatusCodeEnum.BAD_REQUEST.value

class AuthDeniedException(CommonException):
    def __init__(self):
        super().__init__(
            code=1,
            message="无权限访问",
            http_status=StatusCodeEnum.BAD_REQUEST.value  # 暂时这样
        )
        self.success = False
        self.status = 1
        self.status_info = {
            "message": "无权限访问"
        }
        self.http_status = StatusCodeEnum.BAD_REQUEST.value