# corto-precise64
Vagrant configuration for developing Corto on Ubuntu Precise 64

# After bringing the box up

After running `vagrant up`, I recommend running `scripts/git-clone.sh` from the host machine. Still need to find out why it cannot be cloned from the guest machine.

Build the core Corto packages by running `cd /home/vagrant/cortoproject && rake`.

For developing python-binding, create Python environments by running `rake env` from `cortoproject/python-binding`.

# Other tricks

Activate the python3.4 and python3.5 virtual environments for python-binding using the `env34` and `env35` aliases.
