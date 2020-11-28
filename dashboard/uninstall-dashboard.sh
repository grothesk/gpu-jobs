#!/bin/bash
kubectl -n dashboard delete sa dashboard-admin
kubectl delete clusterrolebinding dashboard-admin
helm -n dashboard uninstall kubernetes-dashboard