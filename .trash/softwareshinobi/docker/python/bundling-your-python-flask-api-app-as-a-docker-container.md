# Bundling Your Flask API As A Docker Container [Create Custom Docker Image]

## Introduction

In this Docker App Bundling Guide, you will learn how to bundle your existing Flask API into a Docker Image.

## What You'll Need

* A Linux Server to run the docker build commands.

* A Flask API Application with an app.py (or similar file).

## What We'll Do

* Install Docker Compose to the linux server

* Create and configure a Dockerfile

* Build the Docker Image from the Dockerfile

* Run The Docker Image Locally

## Installing Docker Compose

Let's run these commands quickly to install Docker Compose.

```

## Update OS Packages

sudo apt-get update;

## Install Docker Compose

sudo apt-get install -y docker-compose;

```

## Create A Basic Dockerfile And Add Customizations

So first let's create a simple dockerfile.

Change to the /tmp directory.

```
cd /tmp 
```

Create a New Directory for our Dockerfile.

```
mkdir custom-html-app-docker-image
```

Change directories into the new directory.

```
cd custom-html-app-docker-image
```

Create a new Dockerfile.

```
touch Dockerfile
```

Open the Dockerfile for editing. 

```
nano Dockerfile
```

Paste the following text and press "Control + X" to save the file after you are done.

```
FROM ubuntu

## install python3

RUN set -xe \
    && apt-get update \
    && apt-get install -y python3 \
    && apt-get install -y python3-pip

## install rytr api situation

RUN set -xe \
    && pip install flask_cors \
    && pip install flask

## Add The Python/Flask Files

ADD . /

## On Container start, run the Python API file

CMD ["python3", "app.py"]
```

## Build The Docker Image Using the Dockerfile

```
docker build -t custom-flask-api-app-docker-image .
```

This command will build the docker image using the dockerfile in the current directory.

when the container is built, the output will look like this:

```
Sending build context to Docker daemon   2.56kB
Step 1/5 : FROM ubuntu
latest: Pulling from library/ubuntu
6b851dcae6ca: Pull complete 
Digest: sha256:6120be6a2b7ce665d0cbddc3ce6eae60fe94637c6a66985312d1f02f63cc0bcd
Status: Downloaded newer image for ubuntu:latest
 ---> 99284ca6cea0
Step 2/5 : RUN set -xe     && apt-get update     && apt-get install -y python3     && apt-get install -y python3-pip
Requirement already satisfied: MarkupSafe>=2.0 in /usr/local/lib/python3.10/dist-packages (from Jinja2>=3.1.2->flask) (2.1.3)
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
Removing intermediate container 2fd87416217c
 ---> 073deb90158e
Step 4/5 : ADD . /
 ---> 71e84d615533
Step 5/5 : CMD ["python3", "app.py"]
 ---> Running in 7c705614b67f
Removing intermediate container 7c705614b67f
 ---> c2d3995ce918
Successfully built c2d3995ce918
Successfully tagged custom-flask-api-app-docker-image:latest
```

Look for the last few lines to say successfully built.

## Run The Docker Image Using The Docker Engine

So our custom docker image has been built.

Let's run the docker image and create a new running docker container.

This Docker container will have our custom index.html file from the Dockerfile.

```
docker run -p 8888:80 custom-flask-api-app-docker-image
```

This will start our docker container from the custom-docker-image we built before.

You'll see output like the following:

```
 * Serving Flask app 'my-python-flask-api-server-app'
 * Debug mode: on
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on all addresses (0.0.0.0)
 * Running on http://127.0.0.1:8080
 * Running on http://172.17.0.2:8080
Press CTRL+C to quit
 * Restarting with stat
 * Debugger is active!
 * Debugger PIN: 521-519-387
```

The application is up. 

Now let's verify the docker container website shows our custom content.

## Verify With Your Browser

Open up your favorite internet browser and connect to localhost (or the server ip)

```
## Running on the local host

http://localhost:8888/

## Running on a remote server // example

http://10.10.8.24:8888/
```

You should see your API welcome page displayed.

Note: This will be the endpoint configured under "/".

## Conclusion

Today we learned about Dockerfiles and bundling your Flask API app into a custom docker image using a Dockerfile.

Dockerfiles are easy to work with and can be used to extend an existing Docker Image or create your own.

Give these tips a try when you want to build your own custom docker image of an html app!
