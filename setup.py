from os import environ

from setuptools import find_namespace_packages, setup


with open('README.md', 'r') as file:
    long_description = file.read()


setup(
    name='kz-validators',
    version=environ.get('GITHUB_REF_NAME'),
    description='Kazakhstan specific validators',
    long_description=long_description,
    long_description_content_type='text/markdown',
    packages=find_namespace_packages(include=['kz.*']),
    python_requires='>=3.10',
    zip_file=False,
)
