# robidock

[![Build Status](https://travis-ci.org/robisys/robidock.svg)](https://travis-ci.org/robisys/robidock)

## Documentation

sudo: required

language: ruby

services:
  - docker

before_install:
- docker pull carlad/sinatra
- docker run -d -p 127.0.0.1:80:4567 carlad/sinatra /bin/sh -c "cd /root/sinatra; bundle exec foreman start;"
- docker ps -a
- docker run carlad/sinatra /bin/sh -c "cd /root/sinatra; bundle exec rake test"

script:
- bundle exec rake test



