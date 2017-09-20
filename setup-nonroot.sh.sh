vagrant box list | cut -f 1 -d ' ' | xargs -L 1 vagrant box remove -f

vagrant plugin install vagrant-vbguest

pip install yasha

bash setup-packer.sh
