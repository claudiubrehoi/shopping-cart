FROM openjdk:11-jdk-alpine
VOLUME /tmp
COPY target/shopping-cart-0.0.1.jar shopping-cart-0.0.1.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=ENVIRONMENT_PROFILE", "/shopping-cart-0.0.1.jar"]
