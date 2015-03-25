AWS.config(
  access_key_id: ENV['AWSKEY'],
  secret_access_key: ENV['AWSSEC']
)

S3_BUCKET = AWS::S3.new.buckets[ENV['S3_BUCKET']]
