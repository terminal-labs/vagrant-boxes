mkdir -p packer/config-files/fedora/
mkdir -p packer/config-files/centos/
mkdir -p packer/config-files/debian/
mkdir -p packer/config-files/ubuntu/



  yasha --no-variable-file --SSD=20480 --SIZE=20gb yasha-templates/json-generic/debian8-generic.json -o packer/config-files/debian/debian8-20gb.json


  yasha --no-variable-file --SSD=30720 --SIZE=30gb yasha-templates/json-generic/debian8-generic.json -o packer/config-files/debian/debian8-30gb.json


  yasha --no-variable-file --SSD=40960 --SIZE=40gb yasha-templates/json-generic/debian8-generic.json -o packer/config-files/debian/debian8-40gb.json


  yasha --no-variable-file --SSD=61440 --SIZE=60gb yasha-templates/json-generic/debian8-generic.json -o packer/config-files/debian/debian8-60gb.json


  yasha --no-variable-file --SSD=81920 --SIZE=80gb yasha-templates/json-generic/debian8-generic.json -o packer/config-files/debian/debian8-80gb.json


  yasha --no-variable-file --SSD=2097152 --SIZE=2tb yasha-templates/json-generic/debian8-generic.json -o packer/config-files/debian/debian8-2tb.json



  yasha --no-variable-file --SSD=20480 --SIZE=20gb yasha-templates/json-generic/debian9-generic.json -o packer/config-files/debian/debian9-20gb.json


  yasha --no-variable-file --SSD=30720 --SIZE=30gb yasha-templates/json-generic/debian9-generic.json -o packer/config-files/debian/debian9-30gb.json


  yasha --no-variable-file --SSD=40960 --SIZE=40gb yasha-templates/json-generic/debian9-generic.json -o packer/config-files/debian/debian9-40gb.json


  yasha --no-variable-file --SSD=61440 --SIZE=60gb yasha-templates/json-generic/debian9-generic.json -o packer/config-files/debian/debian9-60gb.json


  yasha --no-variable-file --SSD=81920 --SIZE=80gb yasha-templates/json-generic/debian9-generic.json -o packer/config-files/debian/debian9-80gb.json


  yasha --no-variable-file --SSD=2097152 --SIZE=2tb yasha-templates/json-generic/debian9-generic.json -o packer/config-files/debian/debian9-2tb.json



  yasha --no-variable-file --SSD=20480 --SIZE=20gb yasha-templates/json-generic/centos7-generic.json -o packer/config-files/centos/centos7-20gb.json


  yasha --no-variable-file --SSD=30720 --SIZE=30gb yasha-templates/json-generic/centos7-generic.json -o packer/config-files/centos/centos7-30gb.json


  yasha --no-variable-file --SSD=40960 --SIZE=40gb yasha-templates/json-generic/centos7-generic.json -o packer/config-files/centos/centos7-40gb.json


  yasha --no-variable-file --SSD=61440 --SIZE=60gb yasha-templates/json-generic/centos7-generic.json -o packer/config-files/centos/centos7-60gb.json


  yasha --no-variable-file --SSD=81920 --SIZE=80gb yasha-templates/json-generic/centos7-generic.json -o packer/config-files/centos/centos7-80gb.json


  yasha --no-variable-file --SSD=2097152 --SIZE=2tb yasha-templates/json-generic/centos7-generic.json -o packer/config-files/centos/centos7-2tb.json



  yasha --no-variable-file --SSD=20480 --SIZE=20gb yasha-templates/json-generic/ubuntu14-generic.json -o packer/config-files/ubuntu/ubuntu14-20gb.json


  yasha --no-variable-file --SSD=30720 --SIZE=30gb yasha-templates/json-generic/ubuntu14-generic.json -o packer/config-files/ubuntu/ubuntu14-30gb.json


  yasha --no-variable-file --SSD=40960 --SIZE=40gb yasha-templates/json-generic/ubuntu14-generic.json -o packer/config-files/ubuntu/ubuntu14-40gb.json


  yasha --no-variable-file --SSD=61440 --SIZE=60gb yasha-templates/json-generic/ubuntu14-generic.json -o packer/config-files/ubuntu/ubuntu14-60gb.json


  yasha --no-variable-file --SSD=81920 --SIZE=80gb yasha-templates/json-generic/ubuntu14-generic.json -o packer/config-files/ubuntu/ubuntu14-80gb.json


  yasha --no-variable-file --SSD=2097152 --SIZE=2tb yasha-templates/json-generic/ubuntu14-generic.json -o packer/config-files/ubuntu/ubuntu14-2tb.json



  yasha --no-variable-file --SSD=20480 --SIZE=20gb yasha-templates/json-generic/ubuntu16-generic.json -o packer/config-files/ubuntu/ubuntu16-20gb.json


  yasha --no-variable-file --SSD=30720 --SIZE=30gb yasha-templates/json-generic/ubuntu16-generic.json -o packer/config-files/ubuntu/ubuntu16-30gb.json


  yasha --no-variable-file --SSD=40960 --SIZE=40gb yasha-templates/json-generic/ubuntu16-generic.json -o packer/config-files/ubuntu/ubuntu16-40gb.json


  yasha --no-variable-file --SSD=61440 --SIZE=60gb yasha-templates/json-generic/ubuntu16-generic.json -o packer/config-files/ubuntu/ubuntu16-60gb.json


  yasha --no-variable-file --SSD=81920 --SIZE=80gb yasha-templates/json-generic/ubuntu16-generic.json -o packer/config-files/ubuntu/ubuntu16-80gb.json


  yasha --no-variable-file --SSD=2097152 --SIZE=2tb yasha-templates/json-generic/ubuntu16-generic.json -o packer/config-files/ubuntu/ubuntu16-2tb.json



  yasha --no-variable-file --SSD=20480 --SIZE=20gb yasha-templates/json-generic/fedora25-generic.json -o packer/config-files/fedora/fedora25-20gb.json


  yasha --no-variable-file --SSD=30720 --SIZE=30gb yasha-templates/json-generic/fedora25-generic.json -o packer/config-files/fedora/fedora25-30gb.json


  yasha --no-variable-file --SSD=40960 --SIZE=40gb yasha-templates/json-generic/fedora25-generic.json -o packer/config-files/fedora/fedora25-40gb.json


  yasha --no-variable-file --SSD=61440 --SIZE=60gb yasha-templates/json-generic/fedora25-generic.json -o packer/config-files/fedora/fedora25-60gb.json


  yasha --no-variable-file --SSD=81920 --SIZE=80gb yasha-templates/json-generic/fedora25-generic.json -o packer/config-files/fedora/fedora25-80gb.json


  yasha --no-variable-file --SSD=2097152 --SIZE=2tb yasha-templates/json-generic/fedora25-generic.json -o packer/config-files/fedora/fedora25-2tb.json



  yasha --no-variable-file --SSD=20480 --SIZE=20gb yasha-templates/json-generic/fedora27-generic.json -o packer/config-files/fedora/fedora27-20gb.json


  yasha --no-variable-file --SSD=30720 --SIZE=30gb yasha-templates/json-generic/fedora27-generic.json -o packer/config-files/fedora/fedora27-30gb.json


  yasha --no-variable-file --SSD=40960 --SIZE=40gb yasha-templates/json-generic/fedora27-generic.json -o packer/config-files/fedora/fedora27-40gb.json


  yasha --no-variable-file --SSD=61440 --SIZE=60gb yasha-templates/json-generic/fedora27-generic.json -o packer/config-files/fedora/fedora27-60gb.json


  yasha --no-variable-file --SSD=81920 --SIZE=80gb yasha-templates/json-generic/fedora27-generic.json -o packer/config-files/fedora/fedora27-80gb.json


  yasha --no-variable-file --SSD=2097152 --SIZE=2tb yasha-templates/json-generic/fedora27-generic.json -o packer/config-files/fedora/fedora27-2tb.json

