resource_group_name = "jenkins-rg"
location            = "eastus2"
tags = {
  location = "eastus2"
}
vnet_name        = "jenkins-linux-vnet"
address_space    = ["10.0.0.0/23"]
address_prefixes = ["10.0.1.0/29"]
admin_username   = "jenkinsadminuser"
snet_name        = "jenkins-linux-snet"
nic_name         = "jenkins-linux-nic1"
pip_bool         = true
pip_name         = "jenkins-linux-pip"
sku              = "Standard_D2ds_v4"
vm_name          = "jenkins-linux-vm"
publisher        = "Canonical"
offer            = "UbuntuServer"
image_sku        = "16.04-LTS"
image_version    = "latest"
file_source      = "C:/Users/RISKHANN/Jenkins_azure/Jenkins_Azure_terraform/projects/jenkins/scripts/jenkins_binary.sh"
file_destination = "/home/jenkinsadminuser/jenkins_binary.sh"
