#/bin/sh

NGINX_OPTS="${NGINX_OPTS:-daemon off;}"
NGINX_PREFIX="${NGINX_PREFIX:-/usr/share/nginx}"

[ -f /config/nginx.conf ] || cp -rvp /etc/nginx/* /config

exec /usr/sbin/nginx -p "${NGINX_PREFIX}" -g "${NGINX_OPTS}" -c /config/nginx.conf

