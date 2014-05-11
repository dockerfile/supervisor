#
# Supervisor Dockerfile
#
# https://github.com/dockerfile/supervisor
#

# Pull base image.
FROM dockerfile/ubuntu

# Install Supervisor.
RUN \
  apt-get install -y supervisor && \
  sed -i 's/^\(\[supervisord\]\)$/\1\nnodaemon=true/' /etc/supervisor/supervisord.conf

# Define mountable directories.
VOLUME ["/data", "/etc/supervisor/conf.d"]

# Define working directory.
WORKDIR /etc/supervisor/conf.d

# Define default command.
CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
