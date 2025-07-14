#!/bin/bash

# To run this file in your terminal, enter the following:
#   chmod +x setup_env.sh
#   ./setup_env.sh

# Name of your virtual environment folder - Python 3.10ß
ENV_NAME="venv310"

# Create a new virtual environment using Python 3.10
echo "Creating virtual environment with Python 3.10..."
python3.10 -m venv $ENV_NAME

# Activate the virtual environment
source $ENV_NAME/bin/activate

# Upgrade pip
echo "Upgrading pip..."
pip install --upgrade pip

# Install specific versions
#echo "Installing dependencies..."
#pip install numpy==1.23.5
#pip install bokeh==2.4.3
#pip install pyspedas pytplot matplotlib spiceypy

# Install dependencies from requirements.txt
echo "Installing dependencies from requirements.txt..."
pip install -r requirements.txt

## Save dependencies
#echo "Saving requirements.txt..."
#pip freeze > requirements.txt

echo "✅ Environment setup complete!"
