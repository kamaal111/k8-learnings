# Kubernetes learnings

## Getting started

1. Installing minikube

```shell
# On macOS
brew install minikube
```

2. Starting a minikube cluster

```shell
minikube start
```

## Handy commands

- Get all pods

```shell
kubectl get po -A
```

- Forwarding internal ports

```shell
kubectl port-forward service/<SERVICE_NAME> <EXTERNAL_PORT>:<INTERNAL_PORT>
```
