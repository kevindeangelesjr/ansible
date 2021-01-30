#!/bin/bash

ansible all --become --become-user=root -m dnf -a "name=httpd state=latest"
ansible all --become --become-user=root -m service -a "name=httpd enabled=true state=started"
ansible all --become --become-user=root -m user -a "name=anna"
ansible all --become --become-user=root -m copy -a "src=/etc/hosts dest=/tmp/"