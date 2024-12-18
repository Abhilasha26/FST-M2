#------create 1st container Image----

#set the base image
FROM docker.io/alpine

#Create the working directory
WORKDIR /usr/app
 # here workdir work both mkdir and cd mean create directory and navigate to it.

 #Run command to install redis
 RUN apk add --update redis

 #Comman to start the redis server
 CMD ["redis-server"]