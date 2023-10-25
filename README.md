# Docker Containerization Learning Guide 🐳

## Introduction 🚀

Welcome to hands-on Docker containerization learning guide! 🚀 This guide is designed to help you create your own Docker containers using both the command-line interface (CLI) and Docker Compose. By the end of this tutorial, you'll have a good understanding of how to containerize applications using Docker.

## Prerequisites

Before we begin, make sure you have the following prerequisites installed on your system:


- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Node.js: [Install Node.js](https://nodejs.org/)
- Git: [Install Git](https://git-scm.com/)

## Building a Docker Container with CLI

## Step 1 

### First Step update vite.config (The project using vite so we have to do this) 🛠️

```
export default defineConfig({
  plugins: [react()],
  server: {
    watch: {
      usePolling: true,
    },
    host: true,
    port: 3000,
  },
});
```

## Step 2 

### Option 1: Use the provided Dockerfile
In this project check the root directory we have a basic Dockerfile.If you have it you skip this step or you can create one.

### Option 2: Create a Dockerfile
In your project directory, create a Dockerfile.

## Step 3 


### Create a .dockerignore file 

In the root directory of your project create a file named .dockerignore and then you can use the below.

```
node_modules/
dist/
*.log
```

## Step 4

### Create your first image 🖼️

Now, you can build the Docker image using the docker build command. Replace the-image-name with your desired image name. Execute the following command:

```
docker build -t the-image-name .
```

## Step 5 

### Check your image from CLI 

Now, you can check your docker image if its exist or not by using this command. Execute the following : 

```
docker images
```

If you can see the image you created lets do step 6 !  ✅

## Step 6 

### Create your first Docker Container 🚢

After building the Docker image, you can create and run a container from it using the docker run command. This command also maps port 3000 in the container to port 3000 on the host system. Replace the-image-name with the name you used during the build step:

```
docker run -d -p 3000:3000 the-image-name
```

-d runs the container in the background.
-p 3000:3000 maps port 3000 from the container to port 3000 on the host.


**If everything goes on the way. Your image and container created now we can check by opening any browser you like and check the  http://localhost:3000  Enjoy your Docker containerized application! 🐳**

##Docker Compose

A single source of truth (SSOT) yaml file for creating and managin docker containers. The main advantage of the docker compose is easiest way to create and manage multi container Docker apps.

## Step 1

### Create a docker-compose.yaml file. (The instructions for compose 📄)

We are going to create the docker-compose.yaml in the root directory of our project.

For this repo you can use down below :

`docker-compose.yaml`
```
version: "3" #We specify that which docker compose syntax we are going to use.

services:
  app: 
    build:
      dockerfile: Dockerfile
    ports: 
      - "3000:3000"
      - 
```
## Step 2

### docker compose build command 🖼️

Docker compose's build command is the image builder command.

```
docker compose build
```

## Step 3

### Check the images 

In this step, we are going to check whether we created the image succesfully or not. 

```
docker images ls
```

If you checked and saw your image we can skip this step.


## Step 4 

### Docker compose up (docker compose container creator and starter 🏁 )

It creates and start our container and attach it to our specific ports and volumes.

```
docker compose up -d
```

## Step 5 
### docker-compose down (docker compose container stopper and remover 🧟)

It stops our container and remove them automatically.

```
docker compose down
```

## 🎉 Congratulations! 🎉









