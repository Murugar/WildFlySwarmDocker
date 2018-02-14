FROM openjdk:8-jre-slim

ADD target/wildflyswarmdocker-swarm.jar /opt/wildfly-swarm.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/opt/wildfly-swarm.jar", "-Djava.net.preferIPv4Stack=true"]

HEALTHCHECK --interval=5m --timeout=3s CMD curl -f http://localhost/ || exit 1

