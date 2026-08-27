#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello from $(hostname -f)</h1><p>Deployed on AWS EC2 by Mimi</p>" > /var/www/html/index.html