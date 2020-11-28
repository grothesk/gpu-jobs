#!/bin/bash
kubectl create namespace dashboard
kubectl -n dashboard create sa dashboard-admin
kubectl create clusterrolebinding dashboard-admin --clusterrole=cluster-admin --serviceaccount=dashboard:dashboard-admin

helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
helm -n dashboard install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard -f values.yaml