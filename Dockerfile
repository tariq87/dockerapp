# Use the official Nginx base image
FROM nginx:latest

# Copy the web server configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the static web content
COPY html /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the Nginx web server
CMD ["nginx", "-g", "daemon off;"]
