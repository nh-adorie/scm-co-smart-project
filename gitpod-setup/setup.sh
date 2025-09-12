#!/bin/bash
echo "Starting MySQL setup..."

# Start MySQL service
sudo service mysql start

# Tạo sẵn một database demo
mysql -uroot -e "CREATE DATABASE IF NOT EXISTS demo_db;"

echo "MySQL setup complete."
