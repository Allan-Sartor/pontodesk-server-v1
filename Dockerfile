FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y postgresql-client

RUN mkdir /pontodesk-server-v1

WORKDIR /pontodesk-server-v1

COPY Gemfile Gemfile

COPY Gemfile.lock Gemfile.lock

RUN gem install bundler && bundle install

COPY . /pontodesk-server-v1