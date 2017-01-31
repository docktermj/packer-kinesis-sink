
# Install dependencies.

yum install -y python-setuptools
easy_install supervisor

# supervisord.conf

mv /tmp/files/etc/supervisord.conf /etc
chown root:root /etc/supervisord.conf
chmod 600       /etc/supervisord.conf

# init.d

mv /tmp/files/etc/init.d/supervisord /etc/init.d
chown root:root /etc/init.d/supervisord
chmod 700       /etc/init.d/supervisord
chkconfig --add supervisord
chkconfig supervisord on
service supervisord start