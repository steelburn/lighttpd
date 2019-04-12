FROM alpine
RUN apk add --update --no-cache \
	lighttpd lighttpd-mod_auth && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /www/htdocs && \
    echo "It works!" >> /www/htdocs/index.html

COPY etc/lighttpd/* /etc/lighttpd/
COPY start.sh /usr/local/bin/

EXPOSE 80

VOLUME /www
VOLUME /etc/lighttpd

CMD ["/usr/local/bin/start.sh"]

