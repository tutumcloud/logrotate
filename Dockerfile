FROM ubuntu:trusty
MAINTAINER info@tutum.co

RUN apt-get update && apt-get install -yq logrotate && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN mv /etc/cron.daily/logrotate /etc/cron.hourly/logrotate
ADD logrotate.conf /etc/logrotate.conf

CMD ["cron", "-f"]