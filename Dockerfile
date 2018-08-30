FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y ruby ruby-dev build-essential
RUN gem install bundler --no-document
RUN mkdir -p /app

COPY . /app

WORKDIR /app
RUN bundle install --path=vendor/bundle

ENTRYPOINT ["bundle", "exec", "unicorn", "-c", "unicorn_config.rb", "-E", "development"]
