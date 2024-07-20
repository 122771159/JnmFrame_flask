import json

from model import Url


def transform_data_url(data):
    # 解析 meta 字段，并转换 isshow 字段为布尔类型
    for item in data:
        item['meta'] = json.loads(item['meta'])
        item['isshow'] = item['isshow'] == '1'
        item['children'] = []

    # 创建一个字典，用于快速查找节点
    id_map = {item['id']: item for item in data}

    # 构建层级结构
    def build_tree(item):
        children = [id_map[child['id']] for child in data if child['parentid'] == item['id']]
        for child in children:
            build_tree(child)
        item['children'] = children

    # 寻找根节点并构建树
    result = [item for item in data if item['parentid'] is None]
    for item in result:
        build_tree(item)

    return result


def loadSuperUrl(urls) -> list:
    arr = []
    for url in urls:
        arr.append(url.id)
        if url.parentid:
            u = Url.query.filter_by(id=url.parentid).first()
            arr = arr + loadSuperUrl([u])
    return list(set(arr))
