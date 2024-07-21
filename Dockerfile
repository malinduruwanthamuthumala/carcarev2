# Use the official nginx image from the Docker Hub
FROM nginx:latest

# Copy the built React app from the build context to the nginx html directory
COPY build /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]