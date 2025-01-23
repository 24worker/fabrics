FROM alpine:latest

LABEL maintainer="workers@240221.xyz"
LABEL versions="Fabric-1.20.4"
LABEL description="A Minecraft Fabric server"

RUN apk add --no-cache openjdk21-jre-headless curl

WORKDIR /root/mc-server

#Download Fabric
RUN curl -o fabric-server.jar https://meta.fabricmc.net/v2/versions/loader/1.20.4/0.16.10/1.0.1/server/jar && java -jar fabric-server.jar

RUN sed -i 's/false/true/g' ./eula.txt

EXPOSE 25565

CMD ["java", "-jar", "fabric-server.jar"]