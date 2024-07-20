from marshmallow import Schema, fields, validates, ValidationError, validates_schema
def format_validation_error(err):
    # 提取错误消息并格式化为单一字符串
    messages = []
    for field, errors in err.messages.items():
        for error in errors:
            messages.append(error)
    return ' '.join(messages)
class UserSchema(Schema):
    username = fields.Str(required=True, validate=lambda x: 6 <= len(x) <= 25, error_messages={
        "required": "用户名是必填项",
        "validator_failed": "用户名长度必须在6到25个字符之间"
    })
    password = fields.Str(required=True, validate=lambda x: 6 <= len(x) <= 25, error_messages={
        "required": "密码是必填项",
        "validator_failed": "密码长度必须在6到25个字符之间"
    })
    rememberMe = fields.Boolean(required=False)
    @validates('username')
    def validate_username(self, value):
        if ' ' in value:
            raise ValidationError('用户名不能包含空格')

    @validates_schema
    def validate_password(self, data, **kwargs):
        if 'password' in data and len(data['password']) < 6:
            raise ValidationError('密码长度必须在6到25个字符之间', field_name='password')
