#!/bin/bash
BANNER="======================================"

echo $BANNER
echo "Create the droplet"
echo $BANNER

ansible-playbook deploy_droplet.yml
echo $BANNER
echo "Droplet created"
echo $BANNER


echo $BANNER
echo "Add python"
echo $BANNER
echo yes | ansible jenkins -m raw -a "dnf -y install python-simplejson python-dnf"
echo $BANNER
echo "Python added"
echo $BANNER


echo $BANNER
echo "Install and configure Jenkins"
echo $BANNER
ansible-playbook deploy_jenkins.yml
echo $BANNER
echo "Jenkins installed and configured"
echo $BANNER
