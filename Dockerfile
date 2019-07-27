FROM archivesspace/archivesspace:latest

# Change to root to permform needed actions
USER root

# Addding the custom Startup Script
COPY ./startup.sh /archivesspace/startup.sh

# Create sub folders for volume mounts
RUN mkdir -p /archivesspace/config /archivesspace/data

# Change permission of archivesspace folder
RUN chown archivesspace:archivesspace /archivesspace

# Switch back to archivesspace
USER archivesspace