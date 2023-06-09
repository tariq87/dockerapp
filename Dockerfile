# Use the official Nginx base image
FROM nginx:latest
# Copy the static web content
RUN echo '<h1>Docker Deployment Complete</h1>' > /usr/share/nginx/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the Nginx web server
CMD ["nginx", "-g", "daemon off;"]
