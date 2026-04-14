FROM ruby:3.2-alpine AS builder
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs=4 --retry=3 --without development test
COPY . .
RUN SECRET_KEY_BASE=dummy rails assets:precompile

FROM ruby:3.2-alpine
WORKDIR /app
ENV RAILS_ENV production
ENV RACK_ENV production
COPY --from=builder /app /app
RUN apk add --no-cache --update tzdata
RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime && echo Etc/UTC > /etc/timezone
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]