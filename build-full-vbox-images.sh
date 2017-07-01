vagrant box list | cut -f 1 -d ' ' | xargs -L 1 vagrant box remove -f

vagrant plugin install vagrant-vbguest

cp -r box-creation/full-image-dependencies tl-debian-jessie-64bit-2tb-gui-full/.full-image-dependencies
cp -r box-creation/full-image-dependencies tl-debian-jessie-64bit-2tb-full/.full-image-dependencies

cp -r box-creation/full-image-dependencies tl-debian-jessie-64bit-20gb-full/.full-image-dependencies
cp -r box-creation/full-image-dependencies tl-debian-jessie-64bit-30gb-full/.full-image-dependencies
cp -r box-creation/full-image-dependencies tl-debian-jessie-64bit-40gb-full/.full-image-dependencies

mkdir -p build

mv tl-debian-jessie-64bit-2tb-full/Vagrantfile tl-debian-jessie-64bit-2tb-full/Vagrantfile.old
cp tl-debian-jessie-64bit-2tb/Vagrantfile tl-debian-jessie-64bit-2tb-full/Vagrantfile
cp build/tl-debian-jessie-64bit-2tb.box tl-debian-jessie-64bit-2tb-full/tl-debian-jessie-64bit-2tb.box
cd tl-debian-jessie-64bit-2tb-full
vagrant up
vagrant ssh -c "cd /vagrant/.full-image-dependencies;sudo bash install-packages.sh"
vagrant package --output ../build/tl-debian-jessie-64bit-2tb-full.box
vagrant destroy -f
rm -rf .full-image-dependencies
rm -rf .vagrant
cd -
rm tl-debian-jessie-64bit-2tb-full/Vagrantfile.old

mv tl-debian-jessie-64bit-20gb-full/Vagrantfile tl-debian-jessie-64bit-20gb-full/Vagrantfile.old
cp tl-debian-jessie-64bit-20gb/Vagrantfile tl-debian-jessie-64bit-20gb-full/Vagrantfile
cp build/tl-debian-jessie-64bit-20gb.box tl-debian-jessie-64bit-20gb-full/tl-debian-jessie-64bit-20gb.box
cd tl-debian-jessie-64bit-20gb-full
vagrant up
vagrant ssh -c "cd /vagrant/.full-image-dependencies;sudo bash install-packages.sh"
vagrant package --output ../build/tl-debian-jessie-64bit-20gb-full.box
vagrant destroy -f
rm -rf .full-image-dependencies
rm -rf .vagrant
cd -
rm tl-debian-jessie-64bit-20gb-full/Vagrantfile.old

rm -rf packer/builds

rm -rf tl-debian-jessie-64bit-2tb-gui-full/.full-image-dependencies
rm -rf tl-debian-jessie-64bit-2tb-full/.full-image-dependencies
rm -rf tl-debian-jessie-64bit-2tb/.full-image-dependencies

rm -rf tl-debian-jessie-64bit-20gb-full/.full-image-dependencies
rm -rf tl-debian-jessie-64bit-30gb-full/.full-image-dependencies
rm -rf tl-debian-jessie-64bit-40gb-full/.full-image-dependencies

rm -rf tl-debian-jessie-64bit-2tb-gui-full/.vagrant
rm -rf tl-debian-jessie-64bit-2tb-full/.vagrant
rm -rf tl-debian-jessie-64bit-2tb/.vagrant

rm -rf tl-debian-jessie-64bit-20gb-full/.vagrant
rm -rf tl-debian-jessie-64bit-30gb-full/.vagrant
rm -rf tl-debian-jessie-64bit-40gb-full/.vagrant

rm -rf tl-debian-jessie-64bit-2tb-gui-full/*.box
rm -rf tl-debian-jessie-64bit-2tb-full/*.box
rm -rf tl-debian-jessie-64bit-2tb/*.box

rm -rf tl-debian-jessie-64bit-20gb-full/*.box
rm -rf tl-debian-jessie-64bit-30gb-full/*.box
rm -rf tl-debian-jessie-64bit-40gb-full/*.box
