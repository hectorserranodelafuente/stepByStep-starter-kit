############################################################
# Dockerfile to build Nginx Installed Containers
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM node:22.11.0
# File Author / Maintainer

# Install Nginx

# Add application repository URL to the default sources
# RUN echo "deb http://archive.ubuntu.com/ubuntu/ raring main universe" >> /etc/apt/sources.list

# Update the repository
COPY sequence.sh /sequence.sh

RUN chmod +x /sequence.sh && /sequence.sh

WORKDIR /app/stepByStep

EXPOSE 3000

RUN ["chmod", "+x", "/usr/local/bin/docker-entrypoint.sh"]

COPY /conf/confEmail.js /app/stepByStep/confEmail.js

COPY /conf/confSMS.js /app/stepByStep/confSMS.js

COPY /conf/env.js /app/stepByStep/env.js

COPY /conf/package.json /app/stepByStep/package.json

COPY /conf/basicSignUpConfigForm.js /app/stepByStep/public/js/basicSignUpConfigForm.js

CMD ["npm","run","startDev"]



