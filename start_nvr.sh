if [ ! -f /var/lib/unifi-video/system.properties ]; then
        echo "System Properties NOT found - creating new install"
        cp -R /tmp/unifi-video/* /var/lib/unifi-video/
        chown -R unifi-video:unifi-video /var/lib/unifi-video/
fi

service mongodb start
service unifi-video start
tail -F /var/log/unifi-video/server.log
