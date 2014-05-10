#
# Supervisor Dockerfile
#
# https://github.com/dockerfile/supervisor
#

# Pull base image.
FROM dockerfile/ubuntu

# Install Supervisor.
RUN apt-get install -y supervisor

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["supervisord"]
