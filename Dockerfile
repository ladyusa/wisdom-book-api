FROM maven:3-eclipse-temurin-21 AS build
COPY .. /wisdom-book-api/
WORKDIR /wisdom-book-api
RUN mvn clean package -DskipTests

FROM eclipse-temurin:21
COPY --from=build wisdom-book-api/target/bookapi-1.0.0.jar bookapi.jar
EXPOSE 9090
ENTRYPOINT ["java","-jar","/bookapi.jar"]

# -------------------------------------
#   Before building a docker image,
#   build .jar file with this command
#   (You will need to install mvn first)
# -------------------------------------

# mvn clean package -DskipTests

# -------------------------------------
#   Build image
# -------------------------------------

# docker build -t wisdom-book-api .
# docker tag wisdom-book-api YOUR-DOCKERHUB-USERNAME/wisdom-book-api
# docker login
# docker push YOUR-DOCKERHUB-USERNAME/wisdom-book-api

# -------------------------------------
#   To run a container
# -------------------------------------

# docker run --name wisdom-book-api -p 9001:9001 -d YOUR-DOCKERHUB-USERNAME/wisdom-book-api
