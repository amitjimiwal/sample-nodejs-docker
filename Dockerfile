# FROM ubuntu

# RUN apt-get update
# RUN apt-get install -y curl
# RUN curl -sL https://deb.nodesource.com/setup_18.x -o nodesource_setup.sh
# RUN apt-get upgrade -y
# RUN apt-get install -y nodejs

FROM node:18-alpine3.14 
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY index.js index.js
RUN npm install
ENTRYPOINT [ "node" ,"index.js"]