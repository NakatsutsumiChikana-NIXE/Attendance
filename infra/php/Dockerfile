FROM php:8.2-fpm-buster

ENV COMPOSER_ALLOW_SUPERUSER=1 \
  COMPOSER_HOME=/composer

# Composerを追加
COPY --from=composer:2.2 /usr/bin/composer /usr/bin/composer

# 必要パッケージをインストール
RUN apt-get update && \
  apt-get -y install --no-install-recommends \
    git \
    unzip \
    curl \
    libzip-dev \
    libicu-dev \
    libonig-dev && \
  docker-php-ext-install intl pdo_mysql zip bcmath && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

# Node.js 18をインストール
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
  apt-get install -y nodejs

# php.iniを反映
COPY ./php.ini /usr/local/etc/php/php.ini

# 作業ディレクトリ
WORKDIR /data
