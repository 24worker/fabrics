FROM alpine:latest

LABEL maintainer="workers@240221.xyz"
LABEL versions="Fabric-1.20.4"
LABEL description="A Minecraft Fabric server"

# Fabric Download URL
#Default Fabric Version: 1.20.4
ARG FABRIC_URL=https://meta.fabricmc.net/v2/versions/loader/1.20.4/0.16.10/1.0.1/server/jar
ENV FABRIC_URL=${FABRIC_URL}

RUN apk add --no-cache openjdk21-jre-headless curl

WORKDIR /root/mc-server

#Download Fabric
RUN curl -o fabric-server.jar ${FABRIC_URL} && java -jar fabric-server.jar

RUN sed -i 's/false/true/g' ./eula.txt

EXPOSE 25565

CMD ["java", "-jar", "fabric-server.jar"]