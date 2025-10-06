#!/bin/bash
brew install kubernetes-cli
KUB_VERSION=$(kubectl version --client)
echo "Testing kubernetes version ${KUB_VERSION}"
# install minikube to run locally the k8s
brew install minikube
# start the cluster
minikube start
KUB_VERIFY=$(kubectl cluster-info)
echo "Verifying kubernetes configuration ${KUB_VERIFY}"
kubectl completion bash > $(brew --prefix)/etc/bash_completion.d/kubectl