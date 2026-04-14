FROM ruby:3.2-alpine AS builder

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install --jobs=4 --retry=3 --without development test

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]