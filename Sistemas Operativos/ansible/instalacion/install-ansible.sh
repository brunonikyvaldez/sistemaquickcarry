#!/bin/bash

ansible-playbook /etc/ansible/instalacion/roles/firewall/tasks/instalar_iptables.yaml
ansible-plaubook /etc/ansible/instalacion/roles/mysql/tasks/instalar_mysql.yaml
ansible-playbook /etc/ansible/instalacion/roles/respaldos/tasks/respaldo.yaml
