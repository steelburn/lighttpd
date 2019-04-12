# Lighttpd on Alpine

## How to use this docker image?

Configurable volumes:
- /www/htdocs
- /etc/lighttpd
Exposed port: 80

Simplest command you can use:
``
sudo docker run -p <local-port>:80 -d steelburn/lighttpd
``
Replace ``<local-port>`` with an actual port number you want to expose in your docker host.

If you have your www files somewhere:
``
sudo docker run -p <local-port>:80 -d -v <local-www-dir>:/www/htdocs steelburn/lighttpd

If you would rather use your own configuration files:
``
sudo docker run -p <local-port>:80 -d -v <local-www-dir>:/www/htdocs -v <local-config-dir>:/etc/lighttpd steelburn/lighttpd 
``
