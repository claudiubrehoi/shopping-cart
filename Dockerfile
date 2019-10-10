FROM alpine:3.8
RUN apk --no-cache add openjdk11 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
VOLUME /tmp
COPY target/shopping-cart-0.0.1.jar shopping-cart-0.0.1.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=ENVIRONMENT_PROFILE", "/shopping-cart-0.0.1.jar"]
