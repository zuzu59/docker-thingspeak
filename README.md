# docker-thingspeak
Petit Docker pour faire tourner un serveur Thingspeak très facilement sur ça machine ;-)

zf220122.1647


# Buts
Le dépôt de Thingspeak n'est plus à jour depuis 2015 !

Du coup il ne tourne plus sur les nouvelles distribution à cause des nouvelles mises à jour de Ruby. On peut bien essayer de l'installer à la mano avec un veille distrib de Ruby, mais on va avoir alors le problème avec d'autres applications qui voudront un nouveau Ruby.

Le plus simple et élégant est de faire tourner Thingspeak dans un container Docker et ainsi nous n'avons plus la problématique des versions de Ruby et de Linux !

Il nous faut deux containers, une pour la DB et un pourl e serveur Thinspeak. Ce projet va les installer et démarrer très facilement au moyen d'un seul script.

Et, on peut même le tester en live sur Github avec GITPOD ;-)


## Utilisation

# Installation
Comme cela fonctionne avec Docker, il faut installer en premier Docker sur sa machine !

Pour linux, on peut le faire très facilement ainsi:

```
curl -s -L https://raw.githubusercontent.com/zuzu59/deploy-proxmox/master/install_docker.sh | bash -s --
```

Pour les autres platteformes, il faut lire la documentation d'installation de Docker.

Après il faut récupérer ce dépôt avec:
```
cd ~/
git clone https://github.com/zuzu59/docker-thingspeak.git
cd docker-thingspeak
```

Enfin, on peut le démarrer !


# Démarrage
Pour le démarrer il faut simplement faire ceci:
```
./start.sh
```

Et après quand cela à terminé de démarrer, on peut ouvrir avec son browser ceci:

http://localhost:8080

Et on aura un joli serveur Thingspeak perso bien à nous sur sa machine :-)


# Arrêt
Pour l'arrêter, simplement:
```
./stop.sh
```

# Quand la machine redémarre ?
On utilise Docker-Compose, qui lui va se charger automatiquement de tout redémarrer, si avant le redémarrage de la machine, Thingspeak tournait. Donc c'est tout totomatique ;-)


# On nettoie tout au niveau Docker
Si on veut tout enlever au niveau Docker, on peut utiliser ceci:
```
./purge.sh
```

Mais ATTENTION, cela efface TOUT Thingspeak au niveau Docker mais AUSSI TOUTES les autres choses de Docker. Donc si vous utiliser Docker pour d'autres applis, il ne faut PAS faire ce purge !

