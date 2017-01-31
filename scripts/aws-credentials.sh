
# Copy aws credentials.

mkdir -p /root/.aws
mv /tmp/files/root/aws /root/.aws/
chown -R root:root     /root/.aws/
chmod -R 500           /root/.aws