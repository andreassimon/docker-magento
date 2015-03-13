FROM ndrssmn/php5

MAINTAINER Andreas Simon <a.simon@quagilis.de>

RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes apache2 libapache2-mod-php5
EXPOSE 80
ADD run.sh /run.sh
CMD ["/run.sh"]
