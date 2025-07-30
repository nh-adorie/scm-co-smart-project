#!/bin/bash

echo "Starting MySQL setup..."

# Cập nhật danh sách gói và cài đặt MySQL Server
sudo apt-get update -y
sudo apt-get install -y mysql-server

# Khởi động dịch vụ MySQL
sudo service mysql start

# # Thiết lập mật khẩu cho người dùng root (tùy chọn nhưng nên làm)
# # Lưu ý: Trong môi trường dev container, có thể không cần thiết phải bảo mật quá mức,
# # nhưng tốt nhất vẫn nên đặt mật khẩu.
# sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'your_strong_password';"
# sudo mysql -e "FLUSH PRIVILEGES;"

# # Tạo một cơ sở dữ liệu mẫu và người dùng (tùy chọn)
# sudo mysql -e "CREATE DATABASE IF NOT EXISTS my_database;"
# sudo mysql -e "CREATE USER 'devuser'@'localhost' IDENTIFIED BY 'devpassword';"
# sudo mysql -e "GRANT ALL PRIVILEGES ON my_database.* TO 'devuser'@'localhost';"
# sudo mysql -e "FLUSH PRIVILEGES;"

echo "MySQL setup complete."