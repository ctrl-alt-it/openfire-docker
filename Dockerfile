FROM debian:latest

WORKDIR /app/
ADD entrypoint.sh /app/entrypoint.sh

RUN chmod +x entrypoint.sh && apt-get update && apt-get install -y curl default-jre-headless

EXPOSE 9090 # Admin
EXPOSE 5222 # C2S
EXPOSE 5269 # S2S
EXPOSE 5275 # External Components
EXPOSE 7070 # HTTP Bind
EXPOSE 7443 # HTTP Bind SSL
EXPOSE 7777 # File Transfer Proxy


CMD ["/app/entrypoint.sh"]
