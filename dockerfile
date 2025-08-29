
# Use official Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app
COPY . .

# Expose port (optional, if you're running server)
EXPOSE 3000

# Default command
CMD [ "npm", "start" ]
