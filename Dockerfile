FROM debian:latest

WORKDIR /app/
ADD . /app/

RUN apt-get update && apt-get install -y curl default-jre-headless
RUN curl -L -o 'openfire_4.7.5_all.deb' 'https://github.com/igniterealtime/Openfire/releases/download/v4.7.5/openfire_4.7.5_all.deb'
RUN dpkg -i "openfire_4.7.5_all.deb"

EXPOSE 9090
EXPOSE 9091
EXPOSE 5222

CMD ["/bin/java", "-server", "-DopenfireHome=/usr/share/openfire", "-Dlog4j.configurationFile=/usr/share/openfire/lib/log4j2.xml", "-Dlog4j2.formatMsgNoLookups=true", "-Dopenfire.lib.dir=/usr/share/openfire/lib", "-classpath", "/usr/share/openfire/lib/startup.jar", "-jar", "/usr/share/openfire/lib/startup.jar"]
