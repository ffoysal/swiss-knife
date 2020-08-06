# swiss-knife is a toolset container

It contains various tools and database clients to debug specially in the kubernetes cluster

The best wat run the container as temporary pod

```console
kubectl run temp --image=ffoysal/swiss-knife --restart=Never --rm -it -- sh
```

## mysql client

expecting a service in the same namespace named `mysql-service` is running and listening on the port `3306`

To connect to the mysql service

```console
kubectl run temp --image=ffoysal/swiss-knife --restart=Never --rm -it -- sh

mysql -h mysql-service -u root -p 
```

## posgresql client

expecting a service in the same namespace named `postgres-service` is running and listening on the port `5432`, username=postgres, database name=postgres

To connect to the postgres service

```console
kubectl run temp --image=ffoysal/swiss-knife --restart=Never --rm -it -- sh

psql -h postgres-service -p 5432 -U postgres postgres
```
