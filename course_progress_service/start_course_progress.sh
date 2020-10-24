export JAVA_HOME='/usr/lib/jvm/java-11-openjdk-amd64'
mvn clean install -DskipTests=true \
    && docker-compose build \
    && docker image push artiseasy/course-progress-service:latest \
    && kubectl create -f course-progress-deployment.yaml,course-progress-service.yaml
