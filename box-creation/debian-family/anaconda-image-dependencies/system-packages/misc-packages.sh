su vagrant -c "wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh"
su vagrant -c "bash Miniconda3-latest-Linux-x86_64.sh -b"
su vagrant -c "echo 'export PATH=\"/home/vagrant/miniconda3/bin:\$PATH\"' >> /home/vagrant/.bashrc"
