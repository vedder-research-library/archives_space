FROM archivesspace/archivesspace:latest

# Addding the custom Startup Script
COPY ./startup.sh /archivesspace/startup.sh
