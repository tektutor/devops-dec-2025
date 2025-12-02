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


## Lab - Executing the refactored install nginx playbook
```
cd ~/devops-dec-2025
git pull
cd Day2/ansible/refactored
ansible-playbook install-nginx-playbook.yml

curl http://localhost:8001
curl http://localhost:8002
curl http://localhost:8003
curl http://localhost:8004
```
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/670a7ff4-4dd7-42f4-97b1-8485c970ab9f" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/6087b4ab-e8e7-47a7-ad55-15cfebbc4b58" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/dbde1301-ea0e-4185-a466-3fa910f2cc4a" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/efd2658c-3231-417a-8804-3f2b86831bc2" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/f9ca67ca-453d-4b19-93b6-c12671a90a43" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/2696436a-6c14-42e5-90aa-b13b25406a12" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/6dffbb83-7b22-4503-b205-1c514391c3cb" />

## Info - Ansible Role
<pre>
- is a way we can write re-usable code
- Ansible role though it looks like a playbook, it can't be executed directly
- Ansible roles can be invoked from an ansible playbook
- hence, it is similar to Dynamic Link Library(DLL), DLL has reusable Functions, but it can be directly executed, it can loaded from application and from the application DLL functions can be invoked
- Ansible Role follows a standard directory structure, this can be auto-generated using ansible-galaxy tool
</pre>

## Lab - Develop a custom Ansible Role for nginx and invoke it from our ansible playbook
```
cd ~/devops-dec-2025
git pull
cd Day2/ansible/ansible-role
#ansible-galaxy init nginx
sudo apt install -y tree
tree nginx
ansible-playbook playbook.yml
```
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/5f889f11-b5d9-4c1c-ab75-7ee7ccbeeaf2" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/43d56aa1-d320-4218-b019-b22765871f93" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/79276c5c-52a0-4b79-a35d-5ce26ac4773b" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/5bf06274-1a3c-4e95-b003-86c15cdf915f" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/418d35bb-ea45-4022-aed8-5d312634146a" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/35c4c4a6-e57e-40e9-a925-42b654cabcd9" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/716a6bf2-602a-4607-8690-4ed2d3131228" />

