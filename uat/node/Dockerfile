FROM node:5.10.1
# MANTAINER daniel.alvarez@quantion.com

# Update aptitude repo
RUN apt-get update

# Installing GIT
RUN apt-get install -y git

# Make ssh dir
RUN mkdir /root/.ssh/

# Compiamos la clave privada y damos los permisos.
ADD github_rsa /root/.ssh/id_rsa
RUN chmod 700 /root/.ssh/id_rsa 
RUN chown -R root:root /root/.ssh

# Creamos known_hosts
RUN touch /root/.ssh/known_hosts
RUN echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config

#Preparamos el directorio donde estará la aplicacion
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#Clonamos el repositorio y nos situamos en la rama development
RUN ssh -T git@github.com; exit 0;
RUN git clone git@github.com:geci/moonshine2.git .
RUN git checkout development

#Instalamos las dependencias del proyecto
RUN npm install

# Exponemos el puerto 
EXPOSE 3333

# Comando de ejecución de la app
CMD [ "npm", "start","--site=manager"]

