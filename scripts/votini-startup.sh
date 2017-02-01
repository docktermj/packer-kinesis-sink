
# Install dependencies.

# votini-startup.conf

mv /tmp/files/etc/votini-startup.conf /etc
chown root:root /etc/votini-startup.conf
chmod 600       /etc/votini-startup.conf

# init.d

mv /tmp/files/etc/init.d/votini-startup /etc/init.d
chown root:root /etc/init.d/votini-startup
chmod 700       /etc/init.d/votini-startup
chkconfig --add votini-startup
chkconfig votini-startup on
