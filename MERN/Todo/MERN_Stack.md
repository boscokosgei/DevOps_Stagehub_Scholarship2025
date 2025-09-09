# A Simple Todo Application
Project in Web evelopment to create a simple Todo App using Mern Stack

## Prerequisite
- Linux
- AWS Console
- Git

## Step 1. Accessing the AWS Dashboard to Launch an EC2 Instance
Navigate to aws.console.signup and login with aws account details
Launch an EC2 instance choosing ubuntu ami image
![Images](MERN-AWS.png)

after successful runnning the instance ssh into it
```sh
    ssh -i MERN.pem ubuntu@public ip
```
## Step 2. Backend Configuration
Install Node.js and create an App Directory
```sh
   curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
   sudo apt-get install -y nodejs
```
![Images](Backend_Installation.png)

Veryfying node.js had been installed
![Images](Installing%20nodejs.png)

## Step 3. Installing Express.js
On the Project directory run the following commands to istal express js
```sh
    npm install express 
```
![Images](Install%20Express%20js.png)

Create an index.js file
```sh 
   touch index.js
```
![Images](index%20js%20script.png)
Install dotenv  module
```sh  
   npm install dotenv
```

After updating the script with the code.Verify the server is running
```sh
    node index.js
``` 
![Images](Server%20Running%20on%20port%205000.png)

## Step 4. Create Routes
Create a folder called routes on Todo Directory and inside the directory create an api.js file.
```sh
   mkdir routes
   touch api.js
```
![Images](api%20js.png)

## Step 5. Install Mongodb
The app is going to use a NOSQL database callled mongodb.We will create the database schema
```sh
   npm install mongoose
```
![Images](Installing%20Mongoose.png)
Create a new folder called models
```sh
   mkdir models
   touch /models/todo.js
```
Updating the todo.js file to have the information
![Images](Updated%20Router%20with%20Mongo.png)

## Step 6. Create a Cluster Database on MongoDB website
navigate to 
https://www.mongodb.com/products/try-free/platform/atlas-signup-from-mlab

Sign up and create an account
![Images](MOngo-Mlab%20Setup.png)

Create a Cluster and allow access from anywhere in network setting.Though not recommmended but for testing thats what we will use.
![Images](Mongo%20UI-Cluster.png)
Create Users to access the database
![Images](Mongo_DB_users.png)

Create an environment file for application to connect
```sh
   touch .env
   vi .env
```
Update the file to have the string from mongodb
![Images](env%20file%20creation.png)
Update the index.js file to have the following information
![Images](Updated%20index.js.png)
## Step 7.Testing Backend Code without Frontend using RESTful API
In this project we will use postman to test our application if information can be updated to database and retrieved from database
Download and install postman
![Images](Postman-Post.png)
Checking on Database it items has been update
![Images](Mongo-DB%20items.png)

## Step 8. Frontend Creation
To install the frontend 
```sh
    npx create-react-app-client
```
![Images](Installing%20Frontend.png)

Running the react app
![Images](Updating%20Froontend%20settings.png)
![Images](React-Running.png)

## Creating React Components
We create a components folder inside client directory
![Images](Create%20Components%20folder.png)

Updating Security group on AWS to allow port 3000
![Images](Security%20Group%20allow%20port%203000.png)

Running the application
```sh
   npm run dev
```
![Images](React%20app%20successful.png)

Accessing the Application on a browser
![Images](Successfully%20Deployed%20a%20todo%20app.png)

A simple  todo application has been created with MERN stack