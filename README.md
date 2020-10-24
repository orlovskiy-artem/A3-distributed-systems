# A3-distributed-systems

MOOC platform: Microservices 

To deploy application on your host, go to k8s folder and do comands for files there like (account-service example):
```bash
kubectl create -f account-config.yaml,account-service.yaml,postgresqldb-deployment.yaml, \
    account-deployment.yaml,postgres-data-persistentvolumeclaim.yaml,postgresqldb-service.yaml
```
Also, you should specify your folder for database mountPath in postgres-deployment.yaml files.
