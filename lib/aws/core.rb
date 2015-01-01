AWS.config(:access_key_id => 'KEY', :secret_access_key => 'SECRET')

s3 = AWS::S3.new