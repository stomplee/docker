ARG CODE_VERSION=latest

# Base image to use
FROM debian:${CODE_VERSION}

# Install required packages
RUN apt-get update && apt-get install -y \
    nginx \
    curl \
 && rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV TestVariable BobTheCat

# Copy files from local directory to container
COPY index.html /var/www/html/

# Set working directory
WORKDIR /var/www/html

# Allow external connections on this port
EXPOSE 80

# Command to run when container boots
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

# Healthcheck: Make sure the webserver is running
HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost/ || exit 1