#
# MongoDB Dockerfile
#
# https://github.com/dockerfile/mongodb
#

# Pull base image.
FROM mongo:3.2.0

# Define mountable directories.
VOLUME ["/data/db"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["mongod","-port", "27017"]

# Expose ports.
#   - 27017: process
#   - 28017: http
EXPOSE 27017
EXPOSE 28017
