ARG appdir=/srv/books_api

FROM ruby:2.5.3-slim

RUN set -ex \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
           build-essential \
           curl \
           git \
           gnupg \
           gstreamer1.0-plugins-base \
           gstreamer1.0-tools \
           gstreamer1.0-x \
           libgl1-mesa-dri \
           libmsgpack-dev \
           libpq-dev \
           libqt5webkit5-dev \
           openssh-client \
           pdftk \
           qt5-default \
           xauth \
           xvfb \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
           nodejs \
           yarn \
    && rm -rf /var/lib/apt/lists/*

ARG appdir
WORKDIR $appdir

COPY Gemfile Gemfile.lock $appdir/
RUN gem install bundler && bundle install

COPY . $appdir/

ENV HOST=0.0.0.0

EXPOSE 3000 3035

CMD (bundle check || bundle install) && bundle exec puma -e development -p 3000
