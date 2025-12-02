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
  name  = var.container_name1 
}

resource "docker_container" "my_rocky_container1" {
  image = data.docker_image.tektutor_ansible_rocky_image.name
  name  = var.container_name2 
}
