#Use and existing docker image as a base image
FROM alpine

#Download and instal dependency
RUN apk update && apk add redis

RUN apk add --update gcc

#tell the image what to do when it starts as a container

CMD [ "redis-server" ]