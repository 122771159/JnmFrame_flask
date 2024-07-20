from qiniu import Auth, BucketManager, put_file

from Exception import QiniuException
from utils import generate_random_uuid


def upload_qiniu_yun(filePath,user_id):
    try:
        access_key = 'K-z0byoZRFwU-k20ArCqG4GuDAteU6AhcdQrdzZt'
        secret_key = 'lhvXNYrAgg8Tk8niMVcRHIV5GxRVkw7w64zZQ0CS'
        bucket_name = 'myvueapp'

        q = Auth(access_key, secret_key)
        bucket = BucketManager(q)
        domain = bucket.bucket_domain(bucket_name)[0][0]
        key = f"JNM{user_id}-{generate_random_uuid()}"
        token = q.upload_token(bucket_name, key, 3600)
        ret, info = put_file(token, key, filePath, version='v2')
        if ret['key'] == key:
            return f"http://{domain}/{ret['key']}"
        else:
            raise QiniuException()
    except Exception as e:
        raise QiniuException()



