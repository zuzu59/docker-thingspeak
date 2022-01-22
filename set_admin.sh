#!/bin/bash
#Petit script pour configurer le compte admin de Thingspeak
#zf220122.2210

# source: https://github.com/iobridge/thingspeak/blob/master/README.textile


echo -e "Veuillez rentrer le password pour le compte admin:"
read ADMIN_PWD

CMD_CREATE="AdminUser.create!(email: 'admin@thingspeak.com', password: '$ADMIN_PWD', password_confirmation: '$ADMIN_PWD')"
CMD_COMMAND="docker exec -t thingspeak rails runner \"$CMD_CREATE\""

echo $CMD_COMMAND
eval $CMD_COMMAND

#docker exec -t thingspeak $CMD_CREATE

echo -e "

Voilà le compte admin de Thingspeak est configuré, vous pouvez l'utiliser avec:

http://localhost:8080/admin
Login: admin@thingspeak.com
Password: $ADMIN_PWD


"


