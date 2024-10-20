FROM node:20


# Create app directory

WORKDIR /usr/src/app


# Install app dependencies

# A wildcard is used to ensure both package.json AND package-lock.json are copied

# where available (npm@5+)

COPY package*.json ./


RUN npm install

# If you are building your code for production

# RUN npm ci --only=production


# Bundle app source

COPY . .


EXPOSE 8080

CMD [ "node", "index.js" ]

# Use the official Node.js 18.12.1 base image
FROM node:18.12.1

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy both package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# RUN npm ci --only=production

# Copy the rest of the application code to the container
COPY . .

# Expose the application port
EXPOSE 8080

# Command to start the application
CMD [ "node", "index.js" ]
