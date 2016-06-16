#!/bin/sh
#/etc/init.d/goorelease

case "$1" in
  start)
    su - ovh -c "NODE_ENV=production forever --watch --watchDirectory /home/ovh/pg/goorelease/ --watchIgnore node_modules -a -l /var/log/forever/output.log -o /var/log/forever/stdout.log -e /var/log/forever/error.log --sourceDir=/home/ovh/pg/goorelease/bin/ start www > /dev/null &"
    ;;
  stop)
    su - ovh -c "forever stopall"
    ;;
  *)
    echo "Usage: /etc/init.d/goorelease {start|stop}"
    exit 1
  ;;
esac

exit 0
