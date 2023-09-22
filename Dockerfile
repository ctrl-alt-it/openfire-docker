FROM debian:latest

WORKDIR /app/
ADD entrypoint.sh /app/entrypoint.sh

RUN chmod +x entrypoint.sh && apt-get update && apt-get install -y curl default-jre-headless

EXPOSE 9090
EXPOSE 9091
EXPOSE 5222

CMD ["/app/entrypoint.sh"]
