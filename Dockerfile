FROM maven:3.6
COPY pom.xml /tmp/
COPY Dockerfile /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn install

FROM alpine:3.10
RUN apk --no-cache add openjdk11
VOLUME /tmp
COPY target/shopping-cart-0.0.1.jar shopping-cart-0.0.1.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "", "/shopping-cart-0.0.1.jar"]
