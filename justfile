set export

default:
    just --list

get-all-pods:
    kubectl get po -A

start-dashboard:
    minikube dashboard

# Service1

build-run-service1:
    just services/service1/build-run
