FROM ruby:3.2-slim AS builder
WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY Gemfile ./
RUN bundle install --jobs 4 --retry 3

FROM ruby:3.2-slim
WORKDIR /app

# Create a non-root user
RUN groupadd -r appuser && useradd -r -g appuser appuser

COPY --from=builder /usr/local/bundle /usr/local/bundle
COPY . .

RUN chown -R appuser:appuser /app
USER appuser

CMD ["irb"]