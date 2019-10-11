FROM alpine:3.10
RUN apk --no-cache add openjdk11
RUN apk --no-cache add maven
COPY pom.xml /tmp/
COPY Dockerfile /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn install
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "", "/shopping-cart-0.0.1.jar"]

VOLUME /tmp
