#!/bin/bash
echo "Starting setup..."

python3 -m venv /workspaces/venv
source /workspaces/venv/bin/activate

pip install --upgrade pip
pip install numpy pandas matplotlib seaborn scikit-learn jupyterlab kaggle sqlalchemy mysql-connector-python

sudo apt-get install -y mysql-server
sudo service mysql start

echo "Setup complete!"
