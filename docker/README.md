# Introduction to Docker

Workshop on Docker: https://lauzhack.com/workshops

## Example of Docker Image
```
FROM node:9.2

MAINTAINER Cosmin Rusu "cosmin@dutylabs.ro"

# create app directory
WORKDIR /app

# nodemon for development
RUN npm install -gq nodemon

COPY package.json ./

#install npm and bower dependencies
RUN npm install -q

COPY . /app

ENV PORT 3000
EXPOSE 3000

CMD ["npm", "start"]

```

## Docker Compose

Makes sure some container we defined runs the exact way
we want to.

Workes on only one machine (not distributed).

Not used in improduction

## Workshop
https://github.com/ageapps/lauzhack-docker-workshop
