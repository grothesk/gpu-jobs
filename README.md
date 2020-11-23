# gpu-jobs

## Requirements

1. Vagrant
2. Python
3. (opt) direnv

## Basic Setup

1. Install ansible:

    ```bash
    pip install -r requirements.txt
    ```

2. Change to the ```vagrant``` directory and create the k8s cluster:

    ```bash
    vagrant up
    ```

3. Use the kubeconfig file created by vagrant to connect to the kube-apiserver

