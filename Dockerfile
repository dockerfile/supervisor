#
# Supervisor Dockerfile
#
# https://github.com/dockerfile/supervisor
#

# Pull base image.
FROM dockerfile/ubuntu

# Install Supervisor.
RUN \
  apt-get update && \
  apt-get install -y supervisor && \
  rm -rf /var/lib/apt/lists/* && \
  sed -i 's/^\(\[supervisord\]\)$/\1\nnodaemon=true/' /etc/supervisor/supervisord.conf

# Define mountable directories.
VOLUME ["/etc/supervisor/conf.d"]

# Define working directory.
WORKDIR /etc/supervisor/conf.d

# Define default command.
CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
