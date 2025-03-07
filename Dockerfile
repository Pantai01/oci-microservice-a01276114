FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-a01276114
COPY /target/*.jar oci-microservice-a01276114.jar
COPY /src/main/resources/Wallet_javadev /oci-microservice-a01276114/Wallet_javadev
ENV TNS_ADMIN=/oci-microservice-a01276114/Wallet_javadev
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-a01276114.jar" ]