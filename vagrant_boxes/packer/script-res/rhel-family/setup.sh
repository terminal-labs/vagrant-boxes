#!/usr/bin/env bash
# Add vagrant user to sudoers.

yum update -y
yum groupinstall 'Development Tools' -y
yum install kernel-headers -y
yum install dkms -y
yum install wget -y

echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

mkdir -p /home/vagrant/.ssh
chmod 0700 /home/vagrant/.ssh
wget --no-check-certificate https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh

#wget http://download.virtualbox.org/virtualbox/5.1.30/VBoxGuestAdditions_5.1.30.iso
#mkdir /media/VBoxGuestAdditions
#mount -o loop,ro VBoxGuestAdditions_5.1.30.iso /media/VBoxGuestAdditions
#sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
#rm VBoxGuestAdditions_5.1.30.iso

#sudo umount /media/VBoxGuestAdditions
#sudo rmdir /media/VBoxGuestAdditions
