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
as shown below

