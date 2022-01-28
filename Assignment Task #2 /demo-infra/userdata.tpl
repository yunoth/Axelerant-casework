#!/bin/bash
sudo systemctl restart amazon-ssm-agent
cd /opt
wget https://ftp.drupal.org/files/projects/drupal-8.9.20.tar.gz
tar -xvf drupal-8.9.20.tar.gz