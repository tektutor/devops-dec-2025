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
