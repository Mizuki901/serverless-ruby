# serverless-ruby

For development and deploy by using serverless and ruby.

## Info

Version matrix:

|[Tag](https://github.com/Mizuki901/serverless-ruby/pkgs/container/serverless-ruby)|Ruby|Node|npm|serverless|AWS CLI|
|---|---|---|---|---|---|
|v0.1.0|2.7.7p221|v16.19.1|9.6.0|3.28.1|2.11.0|


## Usage

```
docker pull ghcr.io/mizuki901/serverless-ruby:latest
```

For more info, see [pkgs](https://github.com/Mizuki901/serverless-ruby/pkgs/container/serverless-ruby).

## Develop

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
