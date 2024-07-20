import uuid


def generate_random_uuid():
    # 生成一个随机的UUID4
    random_uuid = uuid.uuid4()
    # 将UUID转换为字符串并去掉连字符
    random_string = str(random_uuid).replace('-', '')
    return random_string
