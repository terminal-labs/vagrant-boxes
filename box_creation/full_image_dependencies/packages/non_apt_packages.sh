curl -L https://bootstrap.saltstack.com -o bootstrap_salt.sh
bash bootstrap_salt.sh -n
rm bootstrap_salt.sh

wget https://deb.nodesource.com/setup_7.x -O setup_7.x
bash setup_7.x
apt update
apt install nodejs
rm setup_7.x

wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
tar xvjf phantomjs-2.1.1-linux-x86_64.tar.bz2 --directory ~/
rm phantomjs-2.1.1-linux-x86_64.tar.bz2
