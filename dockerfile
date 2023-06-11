# Use a base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy your project files to the container
COPY . /app

# Install http-server globally
RUN npm install -g http-server

# Expose port 8080
EXPOSE 8080

# Start the http-server
CMD ["http-server", "-p", "8000"]