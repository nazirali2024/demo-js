# Use official Node.js image as the base image
FROM node:14

# Set working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app files into the container
COPY . .

# Expose port 3000 (the port on which your app is running)
EXPOSE 3000

# Command to run your app inside the container
CMD ["npm", "start"]
