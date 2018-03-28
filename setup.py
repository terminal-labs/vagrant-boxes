from setuptools import setup, find_packages

import vagrant_boxes

setup(
    name='Vagrant-boxes',
    version=vagrant_boxes.__version__,
    description=vagrant_boxes.__description__,
    url='https://github.com/terminal-labs/vagrant-boxes',
    author='Terminal Labs',
    author_email='solutions@terminallabs.com',
    license=license,
    packages=find_packages(),
    include_package_data=True,
    zip_safe=False,
    install_requires= [
        'click',
        'yasha'
    ],
    entry_points='''
        [console_scripts]
        vagrant-boxes=vagrant_boxes.cli:main
     '''
)
