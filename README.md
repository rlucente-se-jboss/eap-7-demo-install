# Overview
These scripts perform a simple installation and configuration of
JBoss EAP 7.x.  This is typically sufficient for demonstration and
development environments.  This can also serve as a good starting
point for more sophisticated installations, but at that point you
may want to consider Ansible.

EAP is installed in the same directory where you cloned this
repository.

# Install
## Configuration
Edit the `demo.conf` file to set the administrative user and password
as well as the distribution and patch versions of EAP.

Review the [readme.txt](dist/readme.txt) in the `dist` folder and
make sure that the required files are present and that they match
the distribution versions in the `demo.conf` file.

## Install
Simply run the following command to install and configure EAP:

    ./install.sh

# Clean up
To uninstall everything, simply run the command:

    ./clean.sh

