FROM openjdk:11

RUN mkdir /docker-apps

COPY java-apps/ /docker-apps

WORKDIR /docker-apps

CMD java -jar petclinic-0.0.1-SNAPSHOT.jar