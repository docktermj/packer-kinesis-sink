# Enable SSH access to git repository.

# Make ssh directory

mkdir -pm 700 /root/.ssh

# Move files into directory

mv /tmp/files/root/ssh/* /root/.ssh
chmod 700 /root/.ssh/*
chown -R root:root /root/.ssh

# Add list of known hosts.

ssh-keyscan -H github.ibm.com >> /root/.ssh/known_hosts
