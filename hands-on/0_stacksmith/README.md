# Containerize an application using Stacksmith

## Requirements

For this exercise you'll need:

- [Docker](https://docs.docker.com/engine/installation/)

## Description

In this folder you have a basic [express](http://expressjs.com/) application.

Try to create a Docker image to run it.

You can follow these steps:

- Go to [Stacksmith](stacksmith.bitnami.com) and log in.

- Create a new stack with __node__ + __express__.

- Download the generated Dockerfile on this folder.

- Build the image: `docker build -t my-express-app .`

- Run your application: `docker run -ti --name my-container my-express-app`
