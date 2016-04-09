# cortobox

Vagrant configuration for developing Corto on Ubuntu Trusty 64

# After bringing the box up

Build the core Corto packages by running `cd /home/vagrant/cortoproject && rake`.

For developing python-binding, create Python environments by running `rake env` from `cortoproject/python-binding`.

# Other tricks

Activate the python3.4 and python3.5 virtual environments for python-binding using the `env34` and `env35` aliases.
