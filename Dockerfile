#
# Supervisor Dockerfile
#
# https://github.com/dockerfile/supervisor
#

# Pull base image.
FROM dockerfile/ubuntu

# Install Supervisor.
RUN apt-get install -y supervisor
RUN sed -i 's/^\(\[supervisord\]\)$/\1\nnodaemon=true/' /etc/supervisor/supervisord.conf

# Define mountable directories.
VOLUME ["/data", "/etc/supervisor/conf.d"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["supervisord"]
