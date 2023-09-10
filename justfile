set export

PROJECT_ID := "kamaalio"

default:
    just --list

get-all-pods:
    kubectl get po -A

start-dashboard:
    minikube dashboard

start-cluster:
    minikube start
    minikube addons enable gcp-auth
    just apply-deployment
    just start-dashboard

apply-deployment:
    kubectl apply -f deployment.yaml

remove-all-pods:
    minikube delete --all

# Service1

build-service1:
    just services/service1/build

build-run-service1:
    just services/service1/build-run

upload-image-service1 container_id:
    #!/bin/zsh

    just services/service1/upload-image $PROJECT_ID {{ container_id }}
