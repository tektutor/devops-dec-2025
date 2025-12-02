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

## Lab - Ansible Recommended Directory structure
```
cd ~/devops-dec-2025
git pull
cd Day2/ansible/ansible-recommended-dir-structure
tree
ansible all -m ping
```
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/bb61fe1a-7173-4497-87ce-b324d730f579" />

## Info - Terraform Overview
<pre>
- is one of the Infrastructure as a code tool (IaC)
- it is a cloud newtral infrastructure automation tool
- hence terraform can used in on-prem(local data-center), public/private/hybrid cloud enviromnents
- it helps you in provisioning containers, managing images, provision virtual machines locally or on public cloude, etc
- it can be used to provision storage cluster, etc
- it can be used to provision EKS( Managed AWS - Elastic Kubernetes Service ) , AKS ( Managed Azure Kubernetes Service ), ROSA ( Managed AWS Red Hat Openshift cluster ), ARO ( Managed Azure Red Hat Openshift Cluster ) on public cloud
- unlike the AWS Cloudformation, Terraform works on any environment an in any cloud
- it comes in 2 flavours
  1. Terraform Core ( command-line only - opensource and free )
  2. Terraform Enterprise ( Supports Web console and it is a paid tool )
</pre>

## Info - Terraform Core - High Level Architecture
![Terraform](terraform-architecture-diagram.png)

## Lab - Install Terraform Core in Ubuntu
```
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

terraform --version
```

## Info - Terraform Providers
<pre>
- Terraform depends on Providers to provision resources
- Terraform providers are developed in golang
- is developed and maintained by HashiCorp

- For example
  - In order to provision an ec2 instance in AWS, Terraform depends on a provider called AWS from registry.terraform.io web site
  - In order to provision an azure VM in Azure portal, Terraform depnds on a provider called Azure from registry.terraform.io 
  - as long as there is a provider, Terraform can provision any type of resource in any environment
  - In case, to provision a particular type of resource within your organization and there is no ready-made provider, you can develop
    you own provider in Golang using Terraform Provider SDK
  - Terraform Providers supports two types of objects/resources
    1. Resources
       - If you wish to provision an ec2 instance using Terraform, then you will define a resource block expressing 
         configuring and your expected state
       - Terraform can Create, Replace, Update and Delete
       - these objects/resources are managed by Terraform
    2. DataSources
       - these resources are not managed by Terraform
       - these resources are treated by Terraform as read-only resources
       - they are managed outside Terraform
       - Terraform can refer and use it in HCL ( HashiCorp Configuration Language - Terraform's proprietary language )
       - In case to provision certain resources, your declarative terraform script(manifest) file might depend on already
         exisitng resources, in such case you would be using DataSources or Data block
</pre>

## Lab - Using existing docker image to provision containers locally

First of all, you need to create folder
```
cd ~
mkdir -p terraform-projects/ex1
cd terraform-projects/ex1
touch main.tf
```

In the main.tf type/paste the below code
<pre>
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "3.6.2"
    }
  }
}

provider "docker" {
  # Configuration options
}

# Terraform will consider the docker image as a read-only resource as we are using data block
data "docker_image" "tektutor_ansible_ubuntu_image" {
  name = "tektutor/ubuntu-ansible-node:latest"
}

# Terraform will consider the docker image as a read-only resource as we are using data block
data "docker_image" "tektutor_ansible_rocky_image" {
  name = "tektutor/rocky-ansible-node:latest"
}

resource "docker_container" "my_ubuntu_container1" {
  image = data.docker_image.tektutor_ansible_ubuntu_image.name
  name  = "ubuntu_container_1"
}

resource "docker_container" "my_rocky_container1" {
  image = data.docker_image.tektutor_ansible_rocky_image.name
  name  = "rocky_container_1"
}
</pre>

Run it
```
cd ~/terraform-projects/ex1
# This will install all the required plugins in your terraform project directory under a hidden folder
terraform init
ls -lha
tree .terraform
terraform plan
terraform apply
ls -lha
docker ps
cat terraform.tfstate
```

<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/527ecb70-64ea-434b-a7b9-8203f8002601" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/820af983-4fa7-476f-9389-038d3d41bcc7" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/ac6e0508-dbe3-46d2-b6d2-df547e16519c" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/a141eb22-6a59-4f42-bff1-1ed7b1e2ab84" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/5270f77e-7154-4bd5-b244-771af6d322e2" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/85f8a51b-f4d9-45f5-a66d-d0daf31004bd" />

<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/68c4f2ef-0191-4146-96a3-92d135a9268f" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/4aeb7ee4-1398-4c84-8584-656a58bc30ca" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/ad67b378-47ee-4324-b859-91891056c8f2" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/d8fb6876-bad0-4198-b134-420fdef8e43e" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/318cfb76-8d70-458a-b5b1-4ddad50ab2e9" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/ce497965-015b-475c-843a-8f87df138992" />


