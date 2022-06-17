FROM ruby:2.6.3
RUN apt update && apt install -y \
        build-essential \
        libpq-dev \
        nodejs \
        postgresql-client \
        yarn

WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register
RUN bundle install

