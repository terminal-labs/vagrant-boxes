### XXX: These commands use os.system calls, which call other shell commands, in loops even.
### This needs to be refactored.

import os
import pkg_resources
import shutil
import subprocess
import urllib.request
from distutils.version import StrictVersion
from zipfile import ZipFile

from bs4 import BeautifulSoup, SoupStrainer
import click

version = pkg_resources.get_distribution('vagrant-boxes').version

def download_packer():
    resp = urllib.request.urlopen("https://releases.hashicorp.com/packer/")
    soup = BeautifulSoup(resp, "html.parser")
    versions = []
    for link in soup.find_all('a', href=True):
        # look for link of form '/packer/version/'
        if link['href'].split('/')[1] == 'packer':
            versions.append(link['href'].split('/')[2])

    versions.sort(key=StrictVersion, reverse=True)
    latest = versions[0]
    filename = 'packer_{}_linux_amd64.zip'.format(latest)
    url = "https://releases.hashicorp.com/packer/{}/{}".format(latest, filename)
    with urllib.request.urlopen(url) as response, open(
            filename, 'wb') as out_file:
        shutil.copyfileobj(response, out_file)
    zipfile = filename
    with ZipFile(zipfile) as zf:
        zf.extractall('vagrant_boxes/packer')
    packer_path = 'vagrant_boxes/packer/packer'
    st = os.stat(packer_path)
    os.chmod(packer_path, st.st_mode | 0o111) # make executable
    click.secho('Downloaded Packer version {}\n'.format(latest), fg='green')

def remove_boxes():
    click.echo('Removed the following boxes:')
    boxes = str(subprocess.check_output('vagrant box list', shell=True), 'utf-8')
    if 'There are no installed boxes!' in boxes:
        click.secho(boxes, fg='yellow')
    else:
        os.system("vagrant box list | cut -f 1 -d ' ' | xargs -L 1 vagrant box remove -f")

CONTEXT_SETTINGS = {
    'help_option_names': ['-h', '--help'],
}

### CLI entry point
@click.group(context_settings=CONTEXT_SETTINGS)
@click.pass_context
def cli(ctx):
    '''Entry point
    '''

### Commands
@cli.command('build-anaconda-boxes')
def build_anaconda_boxes_cmd():
    '''build anaconda boxes
    '''
    cmd = '''cd vagrant_boxes
    mkdir -p bash-scripts
    yasha yasha-templates/bash-templates/build-anaconda-images.sh.template -o bash-scripts/build-anaconda-images.sh
    bash bash-scripts/build-anaconda-images.sh'''
    os.system(cmd)

@cli.command('build-base-boxes')
def build_base_boxes_cmd():
    '''build base boxes
    '''
    cmd = '''cd vagrant_boxes
    mkdir -p bash-scripts
    yasha yasha-templates/bash-templates/build-base-boxes.sh.template -o bash-scripts/build-base-boxes.sh
    bash bash-scripts/build-base-boxes.sh'''
    os.system(cmd)

@cli.command('build-full-boxes')
def build_full_boxes_cmd():
    '''build full boxes
    '''
    cmd = '''cd vagrant_boxes
    mkdir -p bash-scripts
    yasha yasha-templates/bash-templates/build-full-images.sh.template -o bash-scripts/build-full-images.sh
    bash bash-scripts/build-full-images.sh'''
    os.system(cmd)

@cli.command('build-json')
def build_json_cmd():
    '''build intermediate json files
    '''
    cmd = '''cd vagrant_boxes
    mkdir -p bash-scripts
    yasha yasha-templates/bash-templates/build-json-files.sh.template -o bash-scripts/build-json-files.sh
    bash bash-scripts/build-json-files.sh'''
    os.system(cmd)


@cli.command('remove-boxes')
@click.option('-f', '--force', is_flag=True,
              help='Agree to remove all vagrant boxes')
def remove_boxes_cmd(force):
    '''Remove all Vagrant boxes
    '''
    if force:
        remove_boxes()
    elif click.confirm('Do you want to remove all vagrant boxes?'):
        remove_boxes()

@cli.command('setup')
@click.option('-f', '--force', is_flag=True,
              help='Agree to remove all vagrant boxes')
@click.pass_context
def setup_cmd(ctx, force):
    '''Download Packer and remove Vagrant boxes.
    '''
    download_packer()
    ctx.invoke(remove_boxes_cmd, force=force)

main = cli
