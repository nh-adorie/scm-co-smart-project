FROM gitpod/workspace-full:latest

# Cài MySQL Server
USER root
RUN apt-get update && apt-get install -y mysql-server

# Cho phép mysql chạy mà không cần systemd
RUN mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld

USER gitpod
