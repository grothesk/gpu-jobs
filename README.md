# gpu-jobs

## Requirements

1. Vagrant
2. Python
3. VirtualBox
4. kubectl
5. (opt) direnv

## Installation

### Create and activate a virtual environment

Create a venv like this:

```bash
python3 -m venv venv
```

Activate the venv like this:

```bash
source venv/bin/activate
```

### Install Ansible

Installing Ansible via the requirements.txt goes like this:

```bash
pip install -r requirements.txt
```

### Build the kubernetes cluster

Change directory to vagrant and setup the cluster - feel free to reconfigure the Vagrantfile according to your needs:

```bash
vagrant up
```

### Configure kubectl

Change to the base folder of this project and configure kubectl to make use of the created kubeconfig file:

```bash
export KUBECONFIG="$(pwd)/kubeconfig"
```

Do not forget to unset KUBECONFIG when you are done!

I recommend the use of direnv as described in this [repository](https://github.com/grothesk/direnv-kubeconfig).
Maybe you like to install [py-dirk](https://github.com/grothesk/py-dirk).

### Allow scheduling on master node

You can allow scheduling pods on the master node like this:

```bash
kubectl taint node master node-role.kubernetes.io/master:NoSchedule-
```
