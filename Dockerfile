FROM openjdk:17-jdk-slim
COPY target/bookapi-1.0.0.jar bookapi.jar
EXPOSE 9001
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
