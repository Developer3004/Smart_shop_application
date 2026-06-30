# Build Stage
FROM maven:3.8.4-openjdk-17 AS build
COPY smartShoppingApp/ . 
RUN mvn clean package -DskipTests

# Run Stage
# This is the modern, official replacement for openjdk
FROM eclipse-temurin:17-jre-jammy
COPY --from=build /target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]
