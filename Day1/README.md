# Day 1

## Info - DevOps Overview
<pre>
- DevOps - Dev, QA & Operations Team
- DevOps - Automation
- Dev team
  - they work in new features or bug fixes
  - manually they perform unit tesing, integration testing, API testing, etc.,
  - DevOps recommends automating the manual test activity by using Test frameworks following Test driven development, Behavior driven development, etc.,
  - developers also manually install softwares as part of setting up their dev environment
  - DevOps recommends automating the software installations, configuration management, provisioning activities etc.,
- QA team
  - they execute manual and automated test cases
  - DevOps recommends automating 80~90 of their testing activities using BDD Frameworks
  - Tools
    - Cucummber, Jasmine, Specflow, Karma, JUnit, NUnit, PyUnit, unittest, etc
  - QA engineer also manually setup their QA environment
  - DevOps recommends automating the QA envinronment setup using Provisioning & Configuration Management Tools ( using any DevOps )
- Administrators( System Administrators, Infra Admin, DevOps Engineers, DBA, etc, )
  - They will be help Dev/QA/Prod setup their environment by installing OS, softwares, managing users/network, configuring security policies, etc
  - DevOps recommends automating infrastructure and configuration management using DevOps tools
    - Configuration Management Tools
    - Provisoining Tools
</pre>

## Info - Infrastructure Automation Tools
<pre>
- These are provisioning tools that helps in creating a Virtual machine with certain configuration on-prem or on public or hybrid cloud environments
- examples
  - AWS Cloudformation
  - Terraform
  - Docker
  - Podman
  - Vagrant ( Virtual Machine Management tools - supports decalarative ( using source code ) )
</pre>

## Info - Configuration Management Tools
<pre>  - AWS Cloudformation

- These tools helps automating system administration tasks after the provisioning done
- User Management
  - create user
  - giving/resting access
  - adding an user to different user group
- Applying Security Policies
  - Individual user or group level
- Network Management
  - adding servers to one or more Network
- Installing softwares
- Creating users within those softwares
  - For instance, creating database users after installing Database servers
- examples
  - Puppet
  - Chef
  - Ansible
</pre>

## Info - Puppet
<pre>
- one of the oldest configuration management tools 
- this uses Puppet's proprietary language as the DSL(Domain Specific Language - i.e language in which you write the automation code )
- follows client/server architecture
- the servers that are managed by Puppet is called Puppet Nodes
- on each Puppet Node we must install a Puppet agent
- follow pull based architecture
- the Puppet Nodes can be a
  - Windows Server
  - Unix Server
  - Linux Server
  - Server with Mac OS-X
  - Newtwork Switches and routers
- the pull based architecture is considered intrussive, the reason being it is going to steal away some CPU cycles from the server
  - the server might be hosting some Web Server or an Application Server
  - Chef agent frequently connecting to the Chef Server looking for new updated automation scripts
</pre>

## Info - Chef
<pre>
- this tool came after Puppet
- follows client/server architecture
- uses Ruby scripting languages as the DSL
- the servers managed by Chef are called Chef Nodes
- in every Chef Node, we need a Chef Agent 
- follow pull based architecture
- the Chef Nods can be a
  - Windows Server
  - Unix Server
  - Linux Server
  - Server with Mac OS-X
  - Newtwork Switches and routers  
- the pull based architecture is considered intrussive, the reason being it is going to steal away some CPU cycles from the server
  - the server might be hosting some Web Server or an Application Server
  - Chef agent frequently connecting to the Chef Server looking for new updated automation scripts
</pre>

## Info - Ansible
<pre>
- follows simple architecture with existing tools
- works as a stand-alone tool, doesn't follow client/architecture
- Ansible comes in 3 flavours
  - Ansible Core
    - is an open source tool developed in Python by Michael Deehan with opensource community
    - organization that maintains this tools is Ansible Inc
    - supports only command-line
    - officially supported only in Linux but can manage servers(ansible nodes with any OS)
    - whichever machine Ansible is installed is called Ansible Controller Machine
    - only a Linux machine can server as an Ansible Controller Machine (ACM)
    - Ansible Node can be any OS
      - Windows
      - Unix/Linux/Mac
      - Network Switch/Router, etc.,
  
  - AWX
    - developed on top of Ansible Core
    - it is open source product
    - supports Web console
    - acts an upstream project for Ansible Automation Platform or Ansible Tower
    - one can expect only community support as it is an open source project
    - supports User Management - RBAC (Role Based Access Control)
    - supports Teams with specific access, etc.,

  - Ansible Automation Platform ( or formerly called Ansible Tower ) 
    - is a Red Hat Enterprise Product
    - requires license
    - developed on top of opensource AWX
    - supports all features that are supported by AWX
    - Red Hat provides world-wide technically support as it is a paid tool
</pre>


## Info - Hypervisor Overview
<pre>
- hypervisor is a general term used to refer to the virtualization technology  
- virtualization allows us run multiple OS in parallel on the same laptop/desktop/workstation/server
- there are 2 types
  - Type 1 a.k.a Bare Metal Hyervisor and
    - it doesn't require any Host OS to be installed
    - ideal for Workstations & Servers
    - examples
      - Microsoft Hyper-V
      - VMWare vSphere(vCenter)
      - KVM ( supported in all Linux distros )
  - Type 2 a.k.a Hosted Hypervisor
    - it is installed on top of some Host OS ( Windows, Unix, Linux or Mac OS-X )
    - ideal for Laptops/Desktops/Workstations
    - examples
      - Oracle VirtualBox
      - VMWare Workstation Pro ( Linux & Windows ) 
      - VMWare Fusion ( Mac OS-X )
      - Parallels ( Mac OS-X )
- each Virtual Machine must allocated with dedicated Hardware resources
  - CPU
  - RAM
  - Storage (HDD/SSD)
- hence, this type of virtualization is called heavy-weight virtualization
</pre>

## Info - Containerization
<pre>
- a light-weight application virtualization technology
- each container represents one application process in an Operating System
- one or more containers together represent a single application
- container represent an application not an OS
- unlike Virtual Machine, all containers that runs in the same host system shares the Hardware resources available on the host system
- unlike Virtual Machine, all containers shares the underlying Host OS Kernel
- examples
  - Container Engine
    - Docker, Podman, etc.,
  - Container Runtime
    - runC, cRun, CRI-O
</pre>

## Info - Container Runtime
<pre>
- is a low-level software, that helps us manage container images and containers
- they are not so user-friendly, hence end-users generally don't use this directly
- examples
  - runc
  - cRun
  - CRI-O
</pre>

## Info - Container Engine
<pre>
- is a high-level software, that helps us manage container images and containers
- they are very user-friendly
- container engines, internally they make use of Container Runtimes to manage images and containers
- examples
  - Docker depends on Containerd, containerD in turn depends on runC container Runtime
  - Podman depends on cRun or CRI-O container runtime
</pre>

## Info - Docker High-Level Architecture
![Docker](DockerHighLevelArchitecture.png)


## Info - Docker Overview
<pre>
- Docker is developed in golang by Docker Inc organization
- Docker follows client/architecture architecture
- Docker comes in 2 flavours
  - Docker Community Edition - Docker CE ( opensource )
  - Docker Enterprise Edition - Docker EE ( Requires license )
- one of the provisioning tools
- one of the DevOps tools
- We can containerize our user-defined applications by creating a custom docker image
- Docker Image
  - packages your application along with its dependent libraries or dependent softwares
  - Using Docker Image multiple container instances can be created on demand
  - Containerized Linux applications can run on Mac, Linux and Windows
  - Containerized Windows applications mostly runs on Mac, Linux and Windows
  
</pre>

## Lab - Installing Docker CE in Ubuntu
```
# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update

sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
sudo usermod -aG docker $USER

sudo su $USER
docker --version
docker images
```

## Info - Linux Kernel Container Features
<pre>
- Linux supports 2 major features that enables containerization
  - Namespace
    - helps isolating one container from the other containers just like how hypervisor isolates one VM from the other VMs
  - Control Groups (CGroups)
    - helps in applying resource quota restrictions on the container level
    - this helps one container doesn't consume all CPU/Memory/Disk etc
    - examples
      - one can restrict maximum amount of RAM a container can utilize at any point of time 
      - one can restrict how much CPU % one container can utilize at any point of time
</pre>

## Info - Docker Images
<pre>
- is a blueprint of Docker Containerized application
- whatever libraries, whatever software dependencies your applicaiton binary needs, shall be installed by creating a custom docker image
- you also need to copy/install your application binary
- once a custom image with your application binary and dependencies are creates, this image shall be pushed to private/remote docker registry, so that other users can download and create containers using the docker image
- In order to create a container, that image must be present in the local Docker registry
- Docker Local Registry is just a folder in your linux file system
</pre>

## Lab - Checking Docker version
```
docker --version
docker info
```
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/d106750c-18a2-4dd4-b45f-840ed126f925" />

## Lab - Listing docker images from your local docker registry
```
docker images
```

## Lab - Downloading docker image
```
docker pull ubuntu:24.04
docker pull ubuntu:25.04

docker images
```
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/b329b580-dcd6-435a-bf22-d435a689e4be" />

## Lab - Let's create couple of ubuntu containers

Let's create two ubuntu containers and run them in the background
```
docker run -dit --name ubuntu1 --hostname ubuntu1 ubuntu:25.04 /bin/bash
docker run -dit --name ubuntu2 --hostname ubuntu2 ubuntu:25.04 /bin/bash
```
In the above command
<pre>
-d - will help us create a container and run it the background ( deattached )
-it - interactive terminal
-name - name of the container ( this is useful to refer a container from docker point of the view )
-hostname - hostname of the container ( this is similar to hostnames assigned to your windows/linux machine )
-ubuntu:25.04 is the ubuntu image with tag(version) 25.04
-/bin/bash - tells which command/application you wish to run within the container when the container is started
</pre>


Let's list the running containers
```
docker ps
```
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/c2a79f7a-5a44-4584-9bd3-00755be0061c" />


Let's get inside the ubuntu1 container shell
```
docker exec -it ubuntu1 /bin/bash
ls
ls -l
hostname
hostname -i
exit
```
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/e02f0690-1ac0-4a20-8765-ad7c85d64dac" />
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/3defaccc-596e-4471-ad24-71c18c8f099b" />

## Lab - Deleting unwanted image from your local docker registry
```
docker pull hello-world:latest
docker images

docker rmi hello-world:latest
docker images
```

<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/97efb69e-ebc5-4496-9835-3754e4613e9e" />

## Lab - Deleting containers

Delete a running container gracefully
```
docker stop ubuntu1
docker rm ubuntu1
```

Delete a running contianer forcibly
```
docker rm -f ubuntu2
```

Listing all containers
```
docker ps -a
```
<img width="1920" height="1168" alt="image" src="https://github.com/user-attachments/assets/ab536d3d-ba2c-4bfb-9503-40cf37dc9e5b" />

## Lab - Stopping running containers
```
docker stop ubuntu1
docker stop ubuntu1 ubuntu2
docker ps
```

## Lab - Starting exited/stopped containers
```
docker start ubuntu1
docker start ubuntu1 ubuntu2
docker ps
```

## Lab - Restarting containers
```
docker restart ubuntu1 ubuntu2
docker ps
```

## Lab - Renaming a container
```
docker rename <current-container-name> <new-container-name>
docker ps
docker rename ubuntu4 c4
docker ps
```

## Lab - Finding more details about a container
```
docker inspect ubuntu1
# Find IP address
docker inspect -f {{.NetworkSettings.Networks.bridge.IPAddress}} ubuntu1
docker inspect -f {{.NetworkSettings.Networks.bridge.IPAddress}} ubuntu2
ping 172.17.0.2 -c 2
```

## Info - Subnet
<pre>
- it is logical subdivision of a network
- it represents a range of IP address
- For examples
  Subnet 172.17.0.0/16(CIDR)
  A.B.C.D ( 32 bits )
  A(172) - 1 byte ( 8 bits )
  B(17)  - 1 byte ( 8 bits )
  C(0)   - 1 byte ( 8 bits )
  D(0)   - 1 byte ( 8 bits )
  IPV4   - 32 bits
  - First IP - 172.17.0.0
  - 16 indicates the left most 16 bits are fixed, the right most 16 bits represented by 0.0 can change
  - Total IP addresses supported by 172.17.0.0/16 is 256 x 256 = 65535 IP addresses
</pre>

## Lab - Port forwarding

Note
<pre>
- By default docker will setup a network called docker0 with subnet 172.17.0.0/16
- All the containers created will be attached to the docker0 network by default
- optionally, we can also create a custom network with custom subnet and connect our containers to the custom network
- All the containers by default is assigned a Private IP out of the docker0 network
- the private IPs are not accessible outside the system where the container is running
- in order to expose the containerized applcation service to the outside world, we could use port forwarding
</pre>
<img width="3136" height="1608" alt="image" src="https://github.com/user-attachments/assets/9142bb51-a543-4122-a05d-c38680b7d224" />


Let's create a nginx web server with forwarding
```
docker run -d --name nginx1 --hostname nginx1 -p 8001:80 nginx:latest
docker ps
docker inspect nginx1 | grep IA
docker inspect -f {{.NetworkSettings.Networks.bridge.IPAddress}} nginx1
ping 172.17.0.2
```

In order to access the web page hosted by the nginx1 container from another lab machine, we could try
```
#Find the IP address of your lab machine
sudo apt update && sudo apt install -y net-tools iputils-ping 
ifconfig ens160
curl http://<your-lab-machine-ip>:8001
curl http://172.20.0.123:8001
```

## Info - Ansible High-Level Architecture
<img width="5005" height="2564" alt="image" src="https://github.com/user-attachments/assets/07921863-3813-495c-a236-9951dad60b80" />

