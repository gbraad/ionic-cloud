#!/bin/bash

. bootstrap-requirements.sh

echo "${1} controller.test.spotsnel.net" >> /etc/hosts
puppet apply -e "include ::ionic_cloud::compute" || exit 1

# Sanity check
source /root/openrc
openstack hypervisor list | grep -i $(hostname)
if [ $? -eq 0 ]; then 
  echo 'Sanity check successful!'
fi
