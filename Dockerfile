FROM ubuntu:xenial

RUN apt-get update && apt-get upgrade -y
RUN apt-get install software-properties-common nano vi curl nginx php7.0-fpm php7.0-mysql php7.0-curl php7.0-gd php7.0-intl php-pear php-imagick php7.0-imap php7.0-mcrypt php-memcache  php7.0-pspell php7.0-recode php7.0-sqlite3 php7.0-tidy php7.0-xmlrpc php7.0-xsl php7.0-mbstring php-gettext php-apcu -y
RUN add-apt-repository ppa:certbot/certbot -y && apt-get update

RUN echo "installing WP-CLI"
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wpcli
RUN echo "adding wrapper for root wp-cli"
COPY wpsu.sh /usr/local/bin/wp
RUN chmod +x /usr/local/bin/wp

RUN echo "installing certbot"
RUN apt-get install -y certbot
