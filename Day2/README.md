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
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/41b855a1-d11e-42b0-ad55-f6e1ef32498f" />
