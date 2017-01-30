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
mv ~/votini.git/packer-example ~/votini.git/packer-example.$(date +%s)
git clone git@github.com:votini/packer-example.git ~/votini.git/packer-example
```

### Build

```console
cd ~/votini.git/packer-example
packer build template.json
```

### Add to library

```console
cd ~/votini.git/packer-example
vagrant box add --name="packer-example-virtualbox" ./packer-example-nnnnnnnnnn-virtualbox.box
```

### Run

```console
mv /tmp/packer-example /tmp/packer-example.$(date +%s)
mkdir /tmp/packer-example
cd /tmp/packer-example
vagrant init packer-example-virtualbox
vagrant up
```

### Login

```console
cd /tmp/packer-example
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