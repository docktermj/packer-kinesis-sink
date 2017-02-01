
# Install dependencies.

yum install -y python-setuptools
easy_install supervisor

# sysconfig/supervisord

mv /tmp/files/etc/sysconfig/supervisord-aws /etc/sysconfig/supervisord
chown root:root /etc/sysconfig/supervisord
chmod 600       /etc/sysconfig/supervisord

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
