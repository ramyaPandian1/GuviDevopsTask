FROM nginx:alpine

# Copy custom Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the static website files
COPY index.html /usr/share/nginx/html/

# Expose port 80 for the application
EXPOSE 80