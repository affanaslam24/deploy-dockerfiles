# Use Node.js as the base image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the container
COPY . .

# Expose the Vite default dev server port (5173)
EXPOSE 5175

# Start the Vite development server
CMD ["npm", "run", "dev"]

