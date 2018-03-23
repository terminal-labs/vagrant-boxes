cd packer

 #'20gb', '30gb', '40gb', '60gb', '80gb', '2tb'] %}

# centos7 boxes
   #./packer build -force json-res/centos/centos7-2tb.json

# debian8 boxes
   #./packer build -force json-res/debian/debian8-2tb.json

# debian9 boxes
   #./packer build -force json-res/debian/debian9-2tb.json

# ubuntu14 boxes
   #./packer build -force json-res/ubuntu/ubuntu14-2tb.json

# ubuntu16 boxes
   ./packer build -force json-res/ubuntu/ubuntu16-2tb.json

# fedora25 boxes
   #./packer build -force json-res/fedora/fedora25-2tb.json

# fedora27 boxes
   #./packer build -force json-res/fedora/fedora27-2tb.json

