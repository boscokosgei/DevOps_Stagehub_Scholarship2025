# LEMP Stack
 A simple todo list app configured in AWS ec2 instance using Nginx,Mysql and PHP-LEMP Stack

 ## Tech Stack
 - Linux
 - Nginx
 - Mysql
 - PHP

## Step 1. SSH into the AWS EC2 Instance
Login to AWS console using the IAM user account created.Launch an EC2 instance and once its up and running ssh into the server
```sh
   ssh -i LEMP_Stack.pem ubuntu@public-ip address 
```
## Step 2. 
Create a github repository on your github account
add the github repo to AWS EC2 Instnace
```sh
  git clone git@github.com:boscokosgei/DevOps_Stagehub_Scholarship2025.git
```
## Step 3. Installing Nginx Web Server
To install nginx server we begin by running the following commands
```sh 
   sudo apt install nginx -y
   sudo systemctl status nginx
```
After successful installation, nginx can be accessed on the browser using public ip address as shown below
![Images](LEMP-NGINX%20running.png)

## Step 4. Installing MYSQL
To install mysql server for database management
use the following commands
```sh
   sudo apt install mysql-server 
```
Then login to mysql and create a user and database
![Images](Create%20User%20on%20Mysql_DB.png)

## Step 5. Installing Secure Mysql
To ensure security for the db is maintained a secure mysql is installed
with the setting as shown below
```sh 
   sudo mysql_secure_installation
```
![Images](MYSQL-Secure%20Access.png)

## Step 6. Installing PHP
To install PHP for dynamic content for the web server. USe the command below to install the two packages
```sh
    sudo apt install php-fpm php-mysql
```
## Step 7. Configuring Nginx to use PHP Processor
Create a project directory in the EC2 instance
```sh
    sudo mkdir /var/www/projectLEMP
```
![Images](LEMP-PHP-Installation.png)
Assigning Ownership to the directory
```sh
    sudo chown -R $USER
```
![Images](configuring%20Nginx%20to%20use%20PHP.png)
Testing the configuration by running the command
```sh
   nginx -t
```

Create an index.html file for the website to display IP address of EC2 Instance

![Images](index.html.png)

![Images](LEMP-nginx-testing.png)
Accessing the website using the public IP on browser with port 80
```sh
    http://<public-ip>:80
```
![Images](LEMP-nginx-running.png)

## Step 8. Testing PHP with Nginx
To validate that nginx can handle .php file off to the PHP processor 
a new file info.php is created with nano editor

```sh 
    nano /var/www/projectLEMP/info.php
```
on the file
```sh
   <?php
   phpinfo(); 
```
Accessing the page on the browser using Public IP
![Images](PHP-Loading%20LEMP.png)

## Step 9. Retriving Data from MySql database with PHP
To test this we will create a test database with a simple To do list
and configure to access it.So that Nginx will be able to query data form db and display it.
Connect to the database and create a new database
```sh
   sudo mysql 
   mysql> CREATE DATABASE 'example_database'
``` 
![Images](Grant%20Access%20to%20Mysql.png)
Confirming the database was created

![Images](Database%20Update.png)

Create a todo-list 
```sh
   nano /var/www/projectLEMP/todo_list.php

```

![Images](todo_list.PHP%20script.png)

Accessing the page through a web browser
```sh
    http://public-ip/todo_list.php
```
![Images](Todo%20list%20output.png)

Finaly the PHP environment is ready to connect and interact with MySQL server