# packer-example

Based on the tutorial at
https://www.packer.io/intro/getting-started/setup.html

## Local development

### Dependencies

#### Packer

- [Installation](https://www.packer.io/intro/getting-started/setup.html)

```console
$ packer version
Packer v0.12.1
```

#### Vagrant

- [Installation](https://www.vagrantup.com/docs/installation/)

```console
$ vagrant -v
Vagrant 1.9.1
```

#### VirtualBox

- [Installation](https://www.virtualbox.org/)

```console
$ vboxmanage --version
5.0.24_Ubuntur108355
```

#### VirtualBox Guest Additions

##### Ubuntu

```console
sudo apt-get install -y virtualbox-guest-additions-iso
sudo vagrant plugin install vagrant-vbguest
```

##### CentOS

```console
vagrant plugin install vagrant-vbguest
```

### AWS credentials

`~/.aws/credentials`

### Clone repository

```console
mv ~/votini.git/packer-kinesis-sink ~/votini.git/packer-kinesis-sink.$(date +%s)
git clone git@github.com:votini/packer-kinesis-sink.git ~/votini.git/packer-kinesis-sink
```

### FIXME: Copy files

```console
cp ~/.aws/credentials  ~/votini.git/packer-kinesis-sink/files/root/aws/credentials
cp /home/michael/gocode/bin/votini-utils ~/votini.git/packer-kinesis-sink/files/usr/local/bin/votini-utils
```

### Build

```console
cd ~/votini.git/packer-kinesis-sink
packer build template.json
```

packer build -force -only="virtualbox-iso" template.json

### Add to library

```console
cd ~/votini.git/packer-kinesis-sink
vagrant box add --name="packer-kinesis-sink-virtualbox" ./packer-kinesis-sink-nnnnnnnnnn-virtualbox.box
```

### Run

```console
mv /tmp/packer-kinesis-sink /tmp/packer-kinesis-sink.$(date +%s)
mkdir /tmp/packer-kinesis-sink
cd /tmp/packer-kinesis-sink
vagrant init packer-kinesis-sink-virtualbox
vagrant up
```

### Login

```console
cd /tmp/packer-packer-kinesis-sink
vagrant ssh
```

### Public login

1 Uncomment `config.vm.network` in `/tmp/packer-example/Vagrantfile`.  Example:

```console
sed -i.$(date +'%s') \
  -e 's/# config.vm.network \"public_network\"/config.vm.network \"public_network\"/g' \
  /tmp/packer-example/Vagrantfile
```

1. Start vagrant image.

```console
cd /tmp/packer-example
vagrant ssh
```

1. Find the IP address.

```console
ip addr show
```

1. Exit vagrant image and re-login

```console
ssh vagrant@nn.nn.nn.nn
```

## References

1. Templates:
   1. https://github.com/shiguredo/packer-templates
   1. https://github.com/maier/packer-templates   