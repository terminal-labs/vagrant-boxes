apt remove --yes salt-master
apt remove --yes salt-minion
apt remove --yes salt-common
curl -L https://bootstrap.saltstack.com -o bootstrap_salt.sh
bash bootstrap_salt.sh -n
rm bootstrap_salt.sh

apt remove --yes nodejs
wget https://deb.nodesource.com/setup_8.x
bash setup_8.x
apt update
apt install nodejs
rm setup_8.x

apt remove --yes phantomjs
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
tar xvjf phantomjs-2.1.1-linux-x86_64.tar.bz2 --directory ~/
rm phantomjs-2.1.1-linux-x86_64.tar.bz2

apt remove --yes python-pip
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
