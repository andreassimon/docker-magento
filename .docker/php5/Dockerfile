FROM ubuntu:trusty

MAINTAINER Andreas Simon <a.simon@quagilis.de>

RUN apt-get update # 2014-08-15
RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes curl netcat wget
RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes php5 php5-curl php5-mysql php5-mcrypt php5-xdebug mysql-client
RUN php5enmod mcrypt # Fixes php5-mcrypt install
# RUN apt-get install --yes rsync

# Clean up APT when done.
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
