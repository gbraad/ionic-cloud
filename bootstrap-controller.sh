#!/bin/bash

. bootstrap-requirements.sh

echo "127.0.0.1 controller.test.spotsnel.net" >>/etc/hosts
puppet apply -e "include ::ionic_cloud::controller" || exit 1

# Sanity check
source /root/openrc
openstack endpoint list
if [ $? -eq 0 ]; then
  echo 'Sanity check successful!'
fi
