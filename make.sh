rm packer/packer
rm -rf venv
virtualenv venv
. venv/bin/activate
bash setup-nonroot.sh
bash build-all.sh
