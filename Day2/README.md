# Day 2

## Lab - Integrating rocky ansible node container in the static inventory
```  
cd ~/devops-dec-2025
cd Day2/ansible
cat hosts
ansible -i hosts all -m ping
```

## Lab - Install nginx web server 
```
cd ~/devops-dec-2025
cd Day2/ansible/unrefactored
cat ansible.cfg
ansible-playbook install-nginx-playbook.yml
```
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/44a3a8cd-6dbd-49a4-b033-f795f5fc710c" />
