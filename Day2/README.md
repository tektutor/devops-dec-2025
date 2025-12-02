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
curl http://localhost:8001
curl http://localhost:8002
```
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/41b855a1-d11e-42b0-ad55-f6e1ef32498f" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/7a528e4e-90a5-4d3d-ae28-5b5e73682a81" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/db1844fa-cfe0-4880-9721-51de24804030" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/641aeeba-fc74-4a46-99ab-e10d9e30add4" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/ca37ceb4-bf94-49fa-ac44-ea098d8fd987" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/5c0e89ea-5b23-407e-9a7b-f9b0177f62ca" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/d83e995e-36a6-4abe-ba60-cb30126a441c" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/9af96cb1-3822-4d28-85f5-f8bcd97bcba9" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/f7f6445d-03f6-4e5d-a6f0-b69072e0231f" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/c280600f-9112-467c-b27e-8119222886d6" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/c4e70d32-a577-4790-94a6-fb7a391ead21" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/00ad467a-8e7e-4ca0-a72a-b45c9bfd1ab3" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/0d6556dd-cff0-40bf-aeb1-a56e8d794832" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/e4c229bd-301f-4652-81d5-3f19dd370b36" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/aac43564-3375-4133-aa81-379a2a293853" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/d8f7af3d-be24-405b-9513-273e21dd0121" />
