FROM ubuntu:xenial

RUN apt-get update && apt-get upgrade -y
RUN apt-get install software-properties-common nano vi curl nginx php7.0-fpm php7.0-mysql php7.0-curl php7.0-gd php7.0-intl php-pear php-imagick php7.0-imap php7.0-mcrypt php-memcache  php7.0-pspell php7.0-recode php7.0-sqlite3 php7.0-tidy php7.0-xmlrpc php7.0-xsl php7.0-mbstring php-gettext php-apcu -y
RUN add-apt-repository ppa:certbot/certbot -y && apt-get update

RUN echo "installing WP-CLI"
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN echo wp --info --allow-root

RUN echo "installing certbot"
RUN apt-get install -y certbot

RUN echo "adding weekly cron job for cerbot renew --nginx Sundays at 04:01 & logging to /tmp/cron-certbot-renew.log"
RUN (crontab -l 2>/dev/null; echo "1 4 * * 0 cerbot renew --nginx >> /tmp/cron-certbot-renew.log") | crontab -
