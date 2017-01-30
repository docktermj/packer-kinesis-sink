# Based on https://docs.docker.com/engine/installation/linux/centos/
# Based on https://docs.docker.com/engine/admin/

yum install -y yum-utils
yum-config-manager --add-repo https://docs.docker.com/engine/installation/linux/repo_files/centos/docker.repo
yum makecache fast
yum -y install docker-engine-1.13.0

# Configure docker.

mkdir -pm 755 /etc/systemd/system/docker.service.d
mv /tmp/files/etc/systemd/system/docker.service.d/*  /etc/systemd/system/docker.service.d/
chmod -R 755 /etc/systemd/system/docker.service.d
chown -R root:root /etc/systemd/system/docker.service.d

# Start docker.

service docker start

# Restart docker on reboot.

systemctl enable docker
