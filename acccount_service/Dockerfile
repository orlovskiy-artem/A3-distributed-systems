FROM openjdk:11
#ARG JAR_FILE=target/*.jar
EXPOSE 8090


ADD target/acccount_service-0.0.1-SNAPSHOT.jar /app/app.jar
#ADD out/artifacts/acccount_service_jar/acccount_service.jar /app/app.jar
#ENV POSTGRES_HOST "postgres:5432"
#ENV POSTGRES_HOST "172.18.0.1"
#ADD target/acccount_service-0.0.1-SNAPSHOT-jar-with-dependencies.jar /app/app.jar
#ADD ./target/*.jar
#COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app/app.jar"]