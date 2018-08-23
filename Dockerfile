ARG  CODE_VERSION=latest
FROM debian:${CODE_VERSION}

# Install required packages
RUN apt-get update && apt-get install -y \
    nginx \
 && rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV TestVariable BobTheCat
# Allow external connections on this port
EXPOSE 80

# Command to run when container boots
#ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]