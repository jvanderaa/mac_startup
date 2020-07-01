# mac_startup

Start up to get a Mac up and running

## Components

Will leverage a couple of components to get up and running:

- **Make** to install the initial install of HomeBrew, Python3, and Ansible
- **Ansible** to install packages via Home Brew

## PROCESS

1. Install Xcode Comamnd Line Utilities: `xcode-select --install`
2. Copy Makefile to directory of choice to execute from
3. Execute `make start_mac` to:
   1. Install HomeBrew
   2. Install Python 3.7
   3. Pip install Ansible 2.9.10
   4. Install Git from Homebrew
   5. Clone this repo to use the playbook
   6. Execute Ansible Playbook Second task will prompt for your sudo password, **do not add become/become method to the playbook**

### Note

The `make` process is untested right now. The Ansible portion is what I use as my daily updating.
Contributions are welcome! Please follow Git Flow.