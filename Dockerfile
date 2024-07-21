# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy the built React app from the build context to the Nginx html directory
COPY build /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]