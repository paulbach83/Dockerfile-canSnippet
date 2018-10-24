FROM pensiero/apache-php:php7.0
MAINTAINER Paul Bachelerie <paulbachelerie@gmail.com>

ENV PROJECT_PATH=/var/www/canSnippet

RUN apt-get update \
    && apt-get install -y sqlite3 libsqlite3-dev php7.0-sqlite3 \
    && git clone https://github.com/ademcan/canSnippet.git $PROJECT_PATH \
    && chmod 775 -R $PROJECT_PATH \
    && chown www-data:www-data -R $PROJECT_PATH


COPY apache-virtualhost.conf /etc/apache2/sites-available/000-default.conf


EXPOSE 443 80

WORKDIR $PROJECT_PATH

# Start apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
