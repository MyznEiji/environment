FROM eijimyzn/env:1.0.0

RUN apt-get update
RUN apt-get install -y autoconf automake libxml2-dev libcurl4-openssl-dev libssl-dev openssl gettext libicu-dev libmcrypt-dev libmcrypt4 libbz2-dev libreadline-dev build-essential libmhash-dev libmhash2 libxslt1-dev

RUN sudo apt-get install mysql-server -y
RUN sudo usermod -d /var/lib/mysql/ mysql

RUN curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew && chmod +x phpbrew && mv phpbrew /usr/local/bin/phpbrew && phpbrew init
RUN echo 'source ~/.phpbrew/bashrc' >> ~/.bash_profile && source ~/.bash_profile


RUN phpbrew install 7.1.21 +default +mysql
RUN phpbrew switch php-7.1.21

RUN curl -sS https://getcomposer.org/installer | php && sudo mv composer.phar /usr/local/bin/composer && sudo chmod +x /usr/local/bin/composer


