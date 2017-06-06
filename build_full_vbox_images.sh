vagrant plugin install vagrant-vbguest

cp -r box_creation/full_image_dependencies tl_debian_jessie_64bit_2tb_gui_full/.full_image_dependencies
cp -r box_creation/full_image_dependencies tl_debian_jessie_64bit_2tb_full/.full_image_dependencies
cp -r box_creation/full_image_dependencies tl_debian_jessie_64bit_20gb_full/.full_image_dependencies
cp -r box_creation/full_image_dependencies tl_debian_jessie_64bit_30gb_full/.full_image_dependencies
cp -r box_creation/full_image_dependencies tl_debian_jessie_64bit_40gb_full/.full_image_dependencies

mkdir -p build

mv tl_debian_jessie_64bit_2tb_gui_full/Vagrantfile tl_debian_jessie_64bit_2tb_gui_full/Vagrantfile.old
cp tl_debian_jessie_64bit_2tb_gui/Vagrantfile tl_debian_jessie_64bit_2tb_gui_full/Vagrantfile
cd tl_debian_jessie_64bit_2tb_gui_full
vagrant up
vagrant ssh -c "cd /vagrant/.full_image_dependencies;sudo bash install_packages.sh"
vagrant package --output ../build/tl_debian_jessie_64bit_2tb_gui_full.box
vagrant destroy -f
rm -rf .full_image_dependencies
rm -rf .vagrant
cd -
rm tl_debian_jessie_64bit_2tb_gui_full/Vagrantfile.old

mv tl_debian_jessie_64bit_2tb_full/Vagrantfile tl_debian_jessie_64bit_2tb_full/Vagrantfile.old
cp tl_debian_jessie_64bit_2tb/Vagrantfile tl_debian_jessie_64bit_2tb_full/Vagrantfile
cd tl_debian_jessie_64bit_2tb_full
vagrant up
vagrant ssh -c "cd /vagrant/.full_image_dependencies;sudo bash install_packages.sh"
vagrant package --output ../build/tl_debian_jessie_64bit_2tb_full.box
vagrant destroy -f
rm -rf .full_image_dependencies
rm -rf .vagrant
cd -
rm tl_debian_jessie_64bit_2tb_full/Vagrantfile.old

mv tl_debian_jessie_64bit_20gb_full/Vagrantfile tl_debian_jessie_64bit_20gb_full/Vagrantfile.old
cp tl_debian_jessie_64bit_20gb/Vagrantfile tl_debian_jessie_64bit_20gb_full/Vagrantfile
cd tl_debian_jessie_64bit_20gb_full
vagrant up
vagrant ssh -c "cd /vagrant/.full_image_dependencies;sudo bash install_packages.sh"
vagrant package --output ../build/tl_debian_jessie_64bit_20gb_full.box
vagrant destroy -f
rm -rf .full_image_dependencies
rm -rf .vagrant
cd -

mv tl_debian_jessie_64bit_30gb_full/Vagrantfile tl_debian_jessie_64bit_30gb_full/Vagrantfile.old
cp tl_debian_jessie_64bit_30gb/Vagrantfile tl_debian_jessie_64bit_30gb_full/Vagrantfile
cd tl_debian_jessie_64bit_30gb_full
vagrant up
vagrant ssh -c "cd /vagrant/.full_image_dependencies;sudo bash install_packages.sh"
vagrant package --output ../build/tl_debian_jessie_64bit_30gb_full.box
vagrant destroy -f
rm -rf .full_image_dependencies
rm -rf .vagrant
cd -

mv tl_debian_jessie_64bit_40gb_full/Vagrantfile tl_debian_jessie_64bit_40gb_full/Vagrantfile.old
cp tl_debian_jessie_64bit_40gb/Vagrantfile tl_debian_jessie_64bit_40gb_full/Vagrantfile
cd tl_debian_jessie_64bit_40gb_full
vagrant up
vagrant ssh -c "cd /vagrant/.full_image_dependencies;sudo bash install_packages.sh"
vagrant package --output ../build/tl_debian_jessie_64bit_40gb_full.box
vagrant destroy -f
rm -rf .full_image_dependencies
rm -rf .vagrant
cd -
