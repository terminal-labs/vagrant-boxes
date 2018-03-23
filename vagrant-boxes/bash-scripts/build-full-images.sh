cd packer
mkdir -p processing/full-box

 #,'debian-8'] %}
 #'20gb', '30gb', '40gb', '60gb', '80gb', '2tb'] %}

             mkdir -p processing/full-box/tl-ubuntu-1604-64bit-2tb-full
             
             cp -r script-res/debian-family/full-image-dependencies processing/full-box/tl-ubuntu-1604-64bit-2tb-full/full-image-dependencies
             cp vagrant-res/full-box/Vagrantfile processing/full-box/tl-ubuntu-1604-64bit-2tb-full/Vagrantfile
             cd processing/full-box/tl-ubuntu-1604-64bit-2tb-full

             vagrant up
             vagrant ssh -c "cd /vagrant/full-image-dependencies; sudo bash install-packages.sh"
             vagrant package --output ../../../builds/tl-ubuntu-1604-64bit-2tb-full.box
             vagrant destroy -f

             rm -rf .vagrant
             cd -
             

# First for loop
  #,'rhel'] %}

# Second for loop
  #, 'debian-9', 'ubuntu-1404', 'centos-7', 'fedora-25', 'fedora-27'] %}