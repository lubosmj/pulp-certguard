#!/bin/bash

# WARNING: DO NOT EDIT!
#
# This file was generated by plugin_template, and is managed by it. Please use
# './plugin-template --github pulp_certguard' to update this file.
#
# For more info visit https://github.com/pulp/plugin_template

# make sure this script runs at the repo root
cd "$(dirname "$(realpath -e "$0")")"/../..

set -euv

pip install twine

python3 setup.py sdist bdist_wheel --python-tag py3
twine check dist/* || exit 1
twine upload dist/* -u pulp -p $PYPI_PASSWORD
