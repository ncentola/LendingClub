#!/bin/bash

if [ -z "$1" ]
then
  VIRTUALENV_NAME='lendingclub_analysis'
else
  VIRTUALENV_NAME=$1
fi

# make sure virtualenv is installed
pip install virtualenv

virtualenv --system-site-packages -p python3 ~/$VIRTUALENV_NAME
source ~/$VIRTUALENV_NAME/bin/activate

pip install .
pip install -r requirements.txt
