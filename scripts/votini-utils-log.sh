
# Make directories

mkdir -pm 750 /var/log/votini
mkdir -pm 750 /var/log/votini/votini-util/kinesis/votini-tag
mkdir -pm 750 /var/log/votini/votini-util/log

touch /var/log/votini/votini-util/kinesis/votini-tag/votini-tag.log
touch /var/log/votini/votini-util/log/votini-util.log

chown -R root:root /var/log/votini
