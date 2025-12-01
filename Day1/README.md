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
- this uses Puppet's proprietart language as the DSL(Domain Specific Language - i.e language in which you write the automation code )

</pre>
