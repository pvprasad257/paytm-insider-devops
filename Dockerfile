# Base image
FROM node:alpine

# Working directory of a docker file
WORKDIR /usr/app

# Install dependencies
RUN npm install -g contentful-cli

# Copying files
COPY package.json .
COPY index.js .

EXPOSE 3000

# Executable command when container starts
ENTRYPOINT ["npm", "run"]
