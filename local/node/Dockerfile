FROM node:5.10.1
# MANTAINER daniel.alvarez@quantion.com

#SETTING UP THE APP FOLDER
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Define mountable directories.
VOLUME ["/usr/src/app"]
#INSTALLING APP DEPENDENCIES

EXPOSE 3333
# LAUNCHING THE APP
CMD [ "npm", "start","--site=manager"]

