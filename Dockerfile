FROM ruby:2.7-alpine

WORKDIR /app

COPY . /app

RUN apk update \
    && apk add --no-cache  \
    build-base  \
    ruby-dev

RUN bundle install

CMD ["ruby", "/app/main.rb"]

