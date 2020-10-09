# Lighttpd on Alpine

## How to use this docker image?

Configurable volumes:
- /www/htdocs
- /etc/lighttpd
Exposed port: 80

Simplest command you can use:
```bash
sudo docker run -p <local-port>:80 -d steelburn/lighttpd
```
Replace ``<local-port>`` with an actual port number you want to expose in your docker host.

If you have your www files somewhere:
```bash
sudo docker run -p <local-port>:80 -d -v <local-www-dir>:/www/htdocs steelburn/lighttpd
```
If you would rather use your own configuration files:
```bash
sudo docker run -p <local-port>:80 -d -v <local-www-dir>:/www/htdocs -v <local-config-dir>:/etc/lighttpd steelburn/lighttpd 
```

There are two accepted variables you can pass to this container, ``GITREPO`` and ``GITBRANCH``. 
Each indicate the repository to clone, if any, and the branch it should switch to. This is useful
for testing out HTML files still under development. These variables will be skipped if ``/www`` is not empty
