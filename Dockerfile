FROM alpine
MAINTAINER support@tutum.co

RUN apk --update add logrotate
RUN echo "*/5 *	* * *	/usr/sbin/logrotate /etc/logrotate.conf" >> /etc/crontabs/root
ADD logrotate.conf /etc/logrotate.conf

CMD ["crond", "-f"]