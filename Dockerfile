FROM node
#FROM > allow us to build our image up on an other  base image 

WORKDIR /app
#For setting a workdir inside the container, run thext command on it

COPY . /app

#COPY . /app
#By COPY , we tell Docker which file on my local machine should go to the image(node image), then we create(if it doest exist yet) the folder "app"in the file system of my image where my local files will be copied

RUN npm install
#This will run in workdir /app

EXPOSE 80
#By this we tell Docker when container started , we wanna to expose cerain port to our loclal system machin 

#All above will be excuted while creating the image or  created

#**************************************
#But this CMD, when a container is started based on the image  
CMD ["node", "server.js"]