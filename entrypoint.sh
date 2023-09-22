#!/usr/bin/env bash

curl -L -o 'openfire_4.7.5_all.deb' 'https://github.com/igniterealtime/Openfire/releases/download/v4.7.5/openfire_4.7.5_all.deb'

dpkg -i "openfire_4.7.5_all.deb"

/bin/java -server -DopenfireHome=/usr/share/openfire -Dlog4j.configurationFile=/usr/share/openfire/lib/log4j2.xml -Dlog4j2.formatMsgNoLookups=true -Dopenfire.lib.dir=/usr/share/openfire/lib -classpath /usr/share/openfire/lib/startup.jar -jar /usr/share/openfire/lib/startup.jar
