import pkg_resources

import click

version = pkg_resources.get_distribution('vagrant-boxes').version

@click.command()
@click.pass_context
def cli(ctx):
    '''Some docstring
    '''
    click.echo('hey world')

main = cli
