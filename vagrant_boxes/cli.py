import os
import pkg_resources

import click

version = pkg_resources.get_distribution('vagrant-boxes').version

def download_packer():
    # TODO: replace the following with Python
    # TODO: Download the most recent stable Packer, not pinned version (unless stable is broken)
    cmd = '''cd vagrant_boxes/packer
wget https://releases.hashicorp.com/packer/1.0.0/packer_1.0.0_linux_amd64.zip
unzip -o packer_1.0.0_linux_amd64.zip
rm packer_1.0.0_linux_amd64.zip'''
    # TODO: replace with Joe's shell invoker
    os.system(cmd)


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
@cli.command('setup')
@click.option('-f', '--force', is_flag=True,
              help='Agree to remove all vagrant boxes')
@click.pass_context
def setup_cmd(ctx, force):
    '''Download Packer and remove Vagrant boxes.
    '''
    download_packer()
    ctx.invoke(remove_boxes_cmd, force=force)

@cli.command('remove-boxes')
@click.option('-f', '--force', is_flag=True,
              help='Agree to remove all vagrant boxes')
def remove_boxes_cmd(force):
    '''Remove all Vagrant boxes
    '''
    cmd = "vagrant box list | cut -f 1 -d ' ' | xargs -L 1 vagrant box remove -f"
    if force:
        os.system(cmd)
    elif click.confirm('Do you want to remove all vagrant boxes?'):
        os.system(cmd)

main = cli
