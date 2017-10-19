apt install --yes --quiet ca-certificates
apt update --yes --quiet
apt upgrade --yes --quiet

apt install --yes build-essential
apt install --yes linux-headers-$(uname -r)
apt install --yes wget
