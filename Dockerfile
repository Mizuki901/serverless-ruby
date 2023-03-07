FROM ruby:2.7
ENV LANG C.UTF-8

WORKDIR /app

RUN bundle config path 'vendor/bundle'

# Install node & npm
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt install -y nodejs
RUN npm install -g npm

# Install serverless
RUN npm install -g serverless@3.28.1

# Install awscli
RUN curl 'https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip' -o '/tmp/awscliv2.zip'
RUN unzip /tmp/awscliv2.zip -d /tmp/ && /tmp/aws/install -i /usr/local/aws-cli -b /usr/local/bin

COPY ./tmp /tmp
RUN chmod +x /tmp/aws_configure.sh

CMD /bin/bash --login
