# ansible

Before you are able to run any jobs on the ansible hosts, the required packages must be installed once:

```bash
ansible-playbook playbook-install-basic-setup.yml -i inventory
```

After that you can run jobs like this:

```bash
ansible-playbook playbook-run-job.yml -i inventory
```
