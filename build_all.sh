cd packer
bash build_boxes.sh
cd -

mkdir -p build

mv packer/builds/tl-debian-jessie-64bit-2tb.box build/tl-debian-jessie-64bit-2tb.box
cp build/tl-debian-jessie-64bit-2tb.box tl_debian_jessie_64bit_2tb_full/tl-debian-jessie-64bit-2tb.box

bash build_full_vbox_images.sh
