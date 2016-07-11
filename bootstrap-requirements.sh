#!/bin/bash

gem install r10k

pushd /etc/puppet
PUPPETFILE=/home/centos/ionic-cloud/puppet/Puppetfile r10k puppetfile install -v
cp -a /home/centos/ionic-cloud/puppet/modules/ionic_cloud modules/
popd
