## MEAN Stack Project
A book Directory project to store information about author book type and pages deployed using MEAN Stack.
- MongoDB for storage and retrieval of data.
- Express js for backend, making requests to database for reads and write
- Angular js for frontend to handle client and server requests.
- Node js -Javaruntime Environment

## Prerequisite
1. AWS Account.
2. EC2 Instance 
3. Github

### Step1. Installing Node.js
After launcing the EC2 instance and accessing it via ssh
Node.js is installed by running the following commands
```sh
    curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt install -y node.js
```
![Images](MEAN%20node%20installed%20and%20npm.png)

### Step 2. INstalling MongoDB
MongoDB is nosql database application, which will be used to store the data.
```sh
   sudo apt-get install -y mongodb-org 
``` 
![Images](MEAN-Mongodb%20Installation.png)
Starting mongodb Services
```sh
    sudo service mondodb start 
```
Veryfying the service is running
```sh
    sudo systemtl sttus mongodb
```
Installing body-parser package for handling JSON
```sh
    sudo npm install body-parser
```
Creating a folder called Books
```sh
    mkdir Books && cd Books
```
![Images](Creating%20Books%20dir%20and%20npm%20init.png)
Creating a file 
```sh
    vi server.js
```
![Images](MEAN%20Server.js.png)
### Step 3. Installing Express.js and setting routes to the server
Express js is used to pass information to and from mongodb database
Installing Moongose package
```sh
   sudo npm install express mongoose
```
![Images](Install%20Expressjs.png)
Creating routes folder
```sh
   mkdir apps && cd apps
```
Creating routes.js file
```sh
   vi routes.js
```
Creating models folder inside apps
```sh
   mkdir models && cd models
   vi book.js
```
### Step 4. Accessing the routes with AngularJS
Angular Js provides a frontend for creating dynamic views in web application.AngularJS is used to connect the web page with  Expressjs

creating a folder named public in root folder 'Books' and creating a script.js file inside public folder.
```sh
   mkdir public && cd public
   vi script.js
```
![Images](Angular%20js%20script.png)

Create index.js file inside public dir
```sh
   vi index.js
```
![Images](index.html%20file.png)

### Step 5. Accessing the application
if everything has been setup correctly the application can be accesssed by running
```sh
   node server.js
```
Allowing port 3300 on AWS security group
![Images](SG%20port%203300%20allow.png)

On the browser the application is accessed using 
```sh
   http://public-ip:3300
```
![Images](App%20Running.png)