FROM phusion/baseimage
MAINTAINER Shay Lang "shay@anodot.com"
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y --force-yes install git nodejs npm
RUN git clone https://github.com/etsy/statsd.git statsd
RUN cd statsd && npm install statsd-anodot-backend
ADD config.js ./statsd/config.js
EXPOSE 8125:8125/udp
EXPOSE 8126:8126/tcp
CMD ["/usr/bin/nodejs", "/statsd/stats.js", "/statsd/config.js"]
