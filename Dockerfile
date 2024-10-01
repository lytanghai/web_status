# Use the official Nginx image as the base image
FROM nginx:latest

# Copy custom HTML files from the host into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Run the Nginx server in the foreground when the container starts
CMD ["nginx", "-g", "daemon off;"]