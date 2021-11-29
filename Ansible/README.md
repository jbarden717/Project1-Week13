# Ansible Files

The following files are used to deploy the ELK Container and monitor the web servers using filebeat and metricbeat

- Ansible.cfg : Used by Ansible for configuration purposes
- pentest.yml : To Install and configure the web servers
- Install-elk.yml : Uses ansible to install and configure the ELK Stack
- filebeat-config.xml : Configuration file for Filebeat when installing 
- filebeat-playbook.xml : Ansible playbook used to install and configure filebeat on web servers
- metricbeat-config.xml : Configuration file for Metricbeat when installing 
- metricbeat-playbook.xml : Ansible playbook used to install and configure metricbeat on web servers
- hosts : This file is where I place all the ip addresses of my servers and group them accordingly




