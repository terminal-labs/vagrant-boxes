cd packer
bash build-boxes.sh
cd -

mkdir -p build

mv packer/builds/tl-debian-jessie-64bit-2tb.box build/tl-debian-jessie-64bit-2tb.box
cp build/tl-debian-jessie-64bit-2tb.box tl-debian-jessie-64bit-2tb/tl-debian-jessie-64bit-2tb.box
cd tl-debian-jessie-64bit-2tb
vagrant up
vagrant ssh --command "df -h"
vagrant destroy --force
cd -

bash build-full-vbox-images.sh
