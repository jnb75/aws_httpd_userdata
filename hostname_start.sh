#!/bin/bash

clear

# Upadte all packages
echo "Updating packages..."
yum update -y

# httpd installation
echo "Installing httpd..."
yum install httpd.x86_64 -y

# Create index.html in /var/www/html to display hotsname
echo "creating index.html..."
echo "hostname : $(hostname)" > /var/www/html/index.html

# Start and enable httpd
echo "Starting httpd..."
systemctl start httpd
systemctl enable httpd