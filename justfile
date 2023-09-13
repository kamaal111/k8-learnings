set export

PROJECT_ID := "kamaalio"

default:
    just --list

get-all-pods:
    kubectl get po -A

start: start-cluster start-addons apply-deployment start-dashboard

start-dashboard:
    minikube dashboard

start-cluster:
    minikube start

start-addons:
    minikube addons enable gcp-auth

apply-deployment:
    kubectl apply -f kubernetes-manifests -R

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
