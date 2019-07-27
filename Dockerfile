FROM archivesspace/archivesspace:latest

# Addding the custom Startup Script
COPY ./startup.sh /archivesspace/startup.sh

# Change permission of startup script by switching to root and switching back
USER root
RUN chown archivesspace:archivesspace /archivesspace/startup.sh
USER archivesspace