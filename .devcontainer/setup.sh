echo "Starting MySQL setup..."

sudo apt-get update -y
sudo apt-get install -y mysql-server

sudo service mysql start


echo "MySQL setup complete."