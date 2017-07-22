# docker-ubuntu
An ubuntu 16.04 box (from [phusion/baseimage](https://hub.docker.com/r/phusion/baseimage/)) with nginx, php-fpm, wp-cli (plus a wrapper that enables wp-cli as root) and certbot installed.
GitHub: [Dockerfile](https://github.com/revoltmedia/docker-ubuntu/blob/master/Dockerfile)

`docker pull revoltmedia/ubuntu`

Eventually options will be added to change the versions and which packages are installed.

## Currently installs:
software-properties-common bash sudo nano curl nginx php7.0-fpm php7.0-mysql php7.0-curl php7.0-gd php7.0-intl php-pear php-imagick php7.0-imap php7.0-mcrypt php-memcache  php7.0-pspell php7.0-recode php7.0-sqlite3 php7.0-tidy php7.0-xmlrpc php7.0-xsl php7.0-mbstring php-gettext php-apcu certbot wp-cli

[Revolt Media](https://www.revoltmedia.com)
