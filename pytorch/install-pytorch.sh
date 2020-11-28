#!/bin/bash
kubectl create namespace pytorch
helm repo add bitnami https://charts.bitnami.com/bitnami
helm -n pytorch install pytorch bitnami/pytorch -f values.yaml