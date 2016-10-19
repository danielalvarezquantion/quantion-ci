# Hacemos un export de los settings del proxy para poder tener red en el terminal
export http_proxy="";
export https_proxy="";
#nmcli c up id Joria;
# Arrancamos el docker de la mongo DB por si no estuviese activo
#docker run --name mongo.development  -v /home/docker_volumes/mongo.development:/data/db -d mongo;
docker restart dev_mongo_1;

cd /tmp/;
rm -Rf moonshine-dev;
rm -Rf moonshine-dev-disk;
mongodump  --host 40.87.159.49:27017 -d admin -u quantion -p Q@dev2016 --authenticationDatabase admin   --out /tmp/ -v;

mongodump  --host 40.87.159.49:27017 -d moonshine-dev-disk -u quantion -p Q@dev2016 --authenticationDatabase admin   --out /tmp -v;
mongodump  --host 40.87.159.49:27017 -d moonshine-dev -u quantion -p Q@dev2016 --authenticationDatabase admin   --out /tmp/ -v;

cd /tmp/moonshine-dev-disk;
mongorestore -h 10.10.1.2 --drop  -d moonshine-dev-disk .;

cd /tmp/admin;
mongorestore -h 10.10.1.2 --drop  -d admin .;

cd /tmp/moonshine-dev;
mongorestore -h 10.10.1.2 --drop  -d moonshine-dev .;
