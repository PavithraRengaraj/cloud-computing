From ubuntu:latest

#Set the working directory in the image
WORKDIR /app

#copy the files from the host files system to the image file system
copy . /app

#install the necessary packages
Run apt-get update && apt-get install -y python3 python3-pip

#set environment variables
ENV  NAME World

# Run a command to start the application 
CMD["python3", "app.py"]
