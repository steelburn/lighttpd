#!/bin/sh

# this launcher script tails the access and error logs
# to the stdout and stderr, so that `docker logs -f lighthttpd` works.

/usr/local/bin/setup.sh
watch -n 120 /usr/local/bin/update.sh &
if [[ -z "$(ls -A /www/htdocs)" ]]; then
 echo "It works, but there's nothing here yet." >> /www/htdocs/index.html
fi

tail -F /var/log/lighttpd/access.log 2>/dev/null &
tail -F /var/log/lighttpd/error.log 2>/dev/null 1>&2 &
lighttpd -D -f /etc/lighttpd/lighttpd.conf
