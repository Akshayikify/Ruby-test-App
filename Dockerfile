FROM docker.io/library/ruby:3.2-alpine

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install --jobs=4 --retry=3 --without development test

COPY . ./

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]