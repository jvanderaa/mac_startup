# mac_startup

Start up to get a Mac up and running

## Components

Will leverage a couple of components to get up and running:

- **Make** to install the initial install of HomeBrew, Python3, and Ansible
- **Ansible** to install packages via Home Brew

## PROCESS

1. Git clone repo to your mac
2. Execute `ansible-playbook packages.yml` to install packages via HomeBrew
   1. Second task will prompt for your sudo password, **do not add become/become method to the playbook**

### Note

The `make` process is untested right now. The Ansible portion is what I use as my daily updating.
Contributions are welcome! Please follow Git Flow.