#!/bin/bash
echo  "Hola podman"

whoami

# https://podman.io/getting-started/installation

# 1 - Install Podman Centos 

sudo yum -y install podman

podman --version

echo  "Podman Instalado"

# 2 - Install Podman Rhel8 - Beta 

#sudo yum module enable -y container-tools:1.0

#sudo yum module install -y container-tools:1.0