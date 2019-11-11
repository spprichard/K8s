# K8s

A Pure-Swift Kubernetes Client

## Make Commands
- `make import`
    - Copies over proto files located in `k8s.io` into `protos` file so that they can be brought into project
- `make sync-protos`
    - Copies proto file from protos directory and places them in the `Sources/K8s` directory so that they can be buillt with the project
    _NOTE: you may need to add this file into Xcode_

## Hitting REST-API for Local Cluster
- Get Token with
    - Copy this token, it becomes the bearer token in all future requests
```
 kubectl get secrets \
    -o jsonpath='{.items[?(@.type=="kubernetes.io/service-account-token")].data.token}' \
    | base64 --decode
```
- Get the URL of the cluster you are trying to hit
    - Any one of these URLS should work
```
kubectl config view -o \
    jsonpath='{.clusters[*].cluster.server}'
```

## Resources
- https://kubernetes.io/docs/tasks/administer-cluster/access-cluster-api/
