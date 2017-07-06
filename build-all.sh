cd packer
bash build-boxes.sh
cd -

mkdir -p build

mv packer/builds/tl-debian-jessie-64bit-2tb-gui.box build/tl-debian-jessie-64bit-2tb-gui.box
cp build/tl-debian-jessie-64bit-2tb-gui.box tl-debian-jessie-64bit-2tb-gui/tl-debian-jessie-64bit-2tb-gui.box
cd tl-debian-jessie-64bit-2tb-gui
vagrant up
vagrant ssh --command "df -h"
vagrant destroy --force
cd -

mv packer/builds/tl-debian-jessie-64bit-2tb.box build/tl-debian-jessie-64bit-2tb.box
cp build/tl-debian-jessie-64bit-2tb.box tl-debian-jessie-64bit-2tb/tl-debian-jessie-64bit-2tb.box
cd tl-debian-jessie-64bit-2tb
vagrant up
vagrant ssh --command "df -h"
vagrant destroy --force
cd -

mv packer/builds/tl-debian-jessie-64bit-20gb.box build/tl-debian-jessie-64bit-20gb.box
cp build/tl-debian-jessie-64bit-20gb.box tl-debian-jessie-64bit-20gb/tl-debian-jessie-64bit-20gb.box
cd tl-debian-jessie-64bit-20gb
vagrant up
vagrant ssh --command "df -h"
vagrant destroy --force
cd -

mv packer/builds/tl-debian-jessie-64bit-30gb.box build/tl-debian-jessie-64bit-30gb.box
cp build/tl-debian-jessie-64bit-30gb.box tl-debian-jessie-64bit-30gb/tl-debian-jessie-64bit-30gb.box
cd tl-debian-jessie-64bit-30gb
vagrant up
vagrant ssh --command "df -h"
vagrant destroy --force
cd -

mv packer/builds/tl-debian-jessie-64bit-40gb.box build/tl-debian-jessie-64bit-40gb.box
cp build/tl-debian-jessie-64bit-40gb.box tl-debian-jessie-64bit-40gb/tl-debian-jessie-64bit-40gb.box
cd tl-debian-jessie-64bit-40gb
vagrant up
vagrant ssh --command "df -h"
vagrant destroy --force
cd -

mv packer/builds/tl-debian-jessie-64bit-60gb.box build/tl-debian-jessie-64bit-60gb.box
cp build/tl-debian-jessie-64bit-60gb.box tl-debian-jessie-64bit-60gb/tl-debian-jessie-64bit-60gb.box
cd tl-debian-jessie-64bit-60gb
vagrant up
vagrant ssh --command "df -h"
vagrant destroy --force
cd -

mv packer/builds/tl-debian-jessie-64bit-80gb.box build/tl-debian-jessie-64bit-80gb.box
cp build/tl-debian-jessie-64bit-80gb.box tl-debian-jessie-64bit-80gb/tl-debian-jessie-64bit-80gb.box
cd tl-debian-jessie-64bit-80gb
vagrant up
vagrant ssh --command "df -h"
vagrant destroy --force
cd -

bash build-full-vbox-images.sh
