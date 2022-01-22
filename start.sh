#!/bin/bash
#Petit script pour démarrer tout le binz
#zd211229.1421

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
# https://github.com/zuzu59/deploy-proxmox/blob/master/install_docker.sh


docker-compose up -d
docker-compose logs -f

