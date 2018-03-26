from setuptools import setup, find_packages

import vagrant_boxes

setup(
    name='vagrant-boxes',
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
    classifiers = [
            "Programming Language :: Python :: 3.2",
            "Programming Language :: Python :: 3.3",
            "Programming Language :: Python :: 3.4",
            "Programming Language :: Python :: 3.5",
            "Programming Language :: Python :: 3.6",
    ],
    entry_points='''
        [console_scripts]
        vagrant-boxes=vagrant_boxes.cli:main
     '''
)
