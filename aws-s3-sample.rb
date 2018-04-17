require 'aws-sdk'

ACCESS_KEY_ID='hogehoge'
ACCESS_KEY_SECRET='fugafuga'

Aws.config.update(access_key_id: ACCESS_KEY_ID,secret_access_key: ACCESS_KEY_SECRET)

s3 = Aws::S3::Resource.new(region: 'ap-northeast-1')
obj = s3.bucket('bucket-name').object('hoge/fuga/test.json')

obj.upload_file('hoge.json')
