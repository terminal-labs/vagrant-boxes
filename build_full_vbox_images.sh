cp -r box_creation/full_image_dependencies tl_debian_jessie_64bit_2tb_full/.full_image_dependencies
cp -r box_creation/full_image_dependencies tl_debian_jessie_64bit_10gb_full/.full_image_dependencies
cp -r box_creation/full_image_dependencies tl_debian_jessie_64bit_20gb_full/.full_image_dependencies
cp -r box_creation/full_image_dependencies tl_debian_jessie_64bit_30gb_full/.full_image_dependencies
cp -r box_creation/full_image_dependencies tl_debian_jessie_64bit_40gb_full/.full_image_dependencies

cd tl_debian_jessie_64bit_2tb_full
vagrant up 
vagrant ssh -c "cd /vagrant/.full_image_dependencies;sudo bash install_packages.sh"
vagrant package --output ../build/tl_debian_jessie_64bit_2tb_full.box
rm -rf .full_image_dependencies
cd -

cd tl_debian_jessie_64bit_10gb_full
vagrant up 
vagrant ssh -c "cd /vagrant/.full_image_dependencies;sudo bash install_packages.sh"
vagrant package --output ../build/tl_debian_jessie_64bit_10gb_full.box
rm -rf .full_image_dependencies
cd -

cd tl_debian_jessie_64bit_20gb_full
vagrant up 
vagrant ssh -c "cd /vagrant/.full_image_dependencies;sudo bash install_packages.sh"
vagrant package --output ../build/tl_debian_jessie_64bit_20gb_full.box
rm -rf .full_image_dependencies
cd -

cd tl_debian_jessie_64bit_30gb_full
vagrant up 
vagrant ssh -c "cd /vagrant/.full_image_dependencies;sudo bash install_packages.sh"
vagrant package --output ../build/tl_debian_jessie_64bit_30gb_full.box
rm -rf .full_image_dependencies
cd -

cd tl_debian_jessie_64bit_40gb_full
vagrant up 
vagrant ssh -c "cd /vagrant/.full_image_dependencies;sudo bash install_packages.sh"
vagrant package --output ../build/tl_debian_jessie_64bit_40gb_full.box
rm -rf .full_image_dependencies
cd -
