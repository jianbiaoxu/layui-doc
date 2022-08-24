#!/bin/sh

/usr/bin/envsubst < /root/config.json.tp > /root/config.json
/usr/bin/envsubst '\$PORT' < /root/nginx.template.conf > /root/nginx.conf

# run layui-doc
/usr/sbin/nginx -t & /usr/sbin/nginx -c /root/nginx.conf -g 'daemon off;'


