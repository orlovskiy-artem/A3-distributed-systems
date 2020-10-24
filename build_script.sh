export JAVA_HOME='/usr/lib/jvm/java-11-openjdk-amd64'

cd educational_material_service \
    && mvn clean install -DskipTests=true \
    && docker-compose build \
    && docker image push artiseasy/educational-material-service:latest \
    && kubectl create -f educational-material-deployment.yaml,educational-material-service.yaml,postgresqldb-deployment.yaml,postgresqldb-service.yaml \
    || true 
cd ..
cd acccount_service \
    && mvn clean install -DskipTests=true \
    && docker-compose build \
    && docker image push artiseasy/account-service:latest \
    && kubectl create -f account-deployment.yaml,account-service.yaml,postgresqldb-deployment.yaml,postgresqldb-service.yaml \
    || true
cd ..
cd course_progress_service \
    && mvn clean install -DskipTests=true \
    && docker-compose build \
    && docker image push artiseasy/course-progress-service:latest \
    && kubectl create -f course-progress-deployment.yaml,course-progress-service.yaml,\
        postgresqldb-course-progress-deployment.yaml,postgresqldb-course-progress-service.yaml \
    || true
cd ..
cd auto_check_service \
    && mvn clean install -DskipTests=true \
    && docker build -t artiseasy/auto-check-service:latest . \
    && docker image push artiseasy/auto-check-service:latest \
    && kubectl create -f auto-check-deployment.yaml,auto-check-service.yaml \
    || true
cd ..
cd mediator \ 
    && mvn clean install -DskipTests=true \
    && docker build -t artiseasy/mediator:latest .  \
    && docker image push artiseasy/mediator:latest \
    && kubectl create -f mediator-deployment.yaml,mediator-service.yaml
    && cd ..