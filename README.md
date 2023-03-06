# serverless-ruby

For development and deploy by using serverless and ruby.

## Usage

Build:

```
cd serverless-ruby
docker build ./ -t serverless-ruby
```

Run & Login:

```
docker run -itd --name my-serverless-ruby serverless-ruby
docker exec -it my-serverless-ruby /bin/bash --login
```

Set AWS Account (After logined docker container):

```
AWS_ACCESS_KEY_ID=*** AWS_SECRET_ACCESS_KEY=*** /tmp/aws_configure.sh
```

Stop & Remove:

```
docker stop my-serverless-ruby
docker rm my-serverless-ruby
```
