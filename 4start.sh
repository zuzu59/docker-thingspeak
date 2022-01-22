#!/bin/bash
#Petit script pour démarrer tout le binz
#zf220122.1612

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
# https://github.com/zuzu59/deploy-proxmox/blob/master/install_docker.sh

docker-compose up -d
docker-compose logs -f

exit




echo "On attend 10 secondes que tout démarre bien ;-)"
sleep 10
docker exec -it thingspeak rake db:create
docker exec -it thingspeak rake db:schema:load

echo "Voilà, c'est prêt: http://localhost:8080 !"

exit

docker rm -f thingspeak mysql55 
docker run --name mysql55 -e MYSQL_ROOT_PASSWORD=speak -d mysql:5.5
docker run --name thingspeak -p 8080:80 --link mysql55:mysql -d synomi/thingspeak
