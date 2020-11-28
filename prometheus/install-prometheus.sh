#!/bin/bash
kubectl create namespace monitoring

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://charts.helm.sh/stable
helm repo update

helm install -n monitoring kps prometheus-community/kube-prometheus-stack -f values.yaml