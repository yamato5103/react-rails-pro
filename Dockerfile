FROM ruby:2.7.0

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && apt install -y \
        build-essential \
        libpq-dev \
        nodejs \
        postgresql-client \
        yarn

WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register
RUN bundle install

# brew install
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

