echo 11111
mkdir -p /etc/rc.d/init.d/
cat <<EOF |  /opt/webmin-1.990/setup.sh
/etc/webmin
/var/log/webmin
/usr/bin/perl
83
ES4.0
10000
$WEBMIN_USER
$WEBMIN_PASSWORD
$WEBMIN_PASSWORD
n
y
EOF
cat <<EOF |  tee /etc/init.d/webmin
echo 22222222
#!/sbin/openrc-run
WEBMIN=/etc/rc.d/init.d/webmin
start() { \${WEBMIN} start; }
stop() { \${WEBMIN} start; }
EOF
chmod a+x /etc/init.d/webmin

echo 3333
rc-update add webmin
rc-service webmin start
tail -f /dev/null
