# Copyleft (ↄ) 2016 Thiago Almeida <thiagoalmeidasa@gmail.com>
#
# Distributed under terms of the GPLv2 license.

FROM ruby:2.2.4
MAINTAINER Thiago Almeida <thiagoalmeidasa@gmail.com>

COPY . /usr/src/app/

WORKDIR /usr/src/app/

RUN bundle install

EXPOSE 3000

EXPOSE 1080

ADD entrypoint.sh /entrypoint.sh

RUN chmod 777 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
