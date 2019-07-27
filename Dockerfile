FROM archivesspace/archivesspace:latest

# Addding the custom Startup Script
COPY ./startup.sh /archivesspace/startup.sh

# Change permission of it
RUN chown archivesspace:archivesspace /archivesspace/startup.sh