FROM debian:latest

WORKDIR /app/
ADD entrypoint.sh /app/entrypoint.sh

RUN chmod +x entrypoint.sh && apt-get update && apt-get install -y curl default-jre-headless

EXPOSE 9090
EXPOSE 5222
EXPOSE 5269
EXPOSE 5275
EXPOSE 7070
EXPOSE 7443
EXPOSE 7777


CMD ["/app/entrypoint.sh"]
