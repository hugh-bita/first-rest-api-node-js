# Use the official Node.js 14 image as the base image
FROM --platform=linux/amd64 node:alpine

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port that your application will be listening on
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]