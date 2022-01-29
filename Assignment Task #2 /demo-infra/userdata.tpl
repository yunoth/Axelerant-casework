#!/bin/bash
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
#sudo yum update -y
sudo systemctl restart amazon-ssm-agent
#sudo yum install -y php
sudo amazon-linux-extras install -y php7.2
sudo yum install -y httpd.x86_64 php-dom php-gd php-simplexml php-xml php-opcache php-mbstring amazon-efs-utils
sudo mount -t nfs4 -o nfsvers=4.1 ${efs_target}:/ /var/www/html/
cd /var/www/html/
wget https://ftp.drupal.org/files/projects/drupal-8.9.20.tar.gz
tar -xvf drupal-8.9.20.tar.gz
ln -s drupal-8.9.20 drupal
chown -R apache:apache /var/www/html/
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
#echo “Hello World from $(hostname -f)” > /var/www/html/index.html