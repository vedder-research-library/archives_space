FROM archivesspace/archivesspace:latest

# Change to root to permform needed actions
USER root

# Addding the custom Startup Script
COPY ./startup.sh /archivesspace/startup.sh

# Create sub folders for volume mounts
RUN mkdir -p /archivesspace/config /archivesspace/data

# Change permission of archivesspace folder
RUN chown -R archivesspace:archivesspace /archivesspace

# Need the connector to test connection to database
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update && \
    apt-get -y install --no-install-recommends \
      mysql-client && \
    rm -rf /var/lib/apt/lists/

# Switch back to archivesspace
USER archivesspace