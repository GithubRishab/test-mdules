for_dev_rg_map = {
  rg1_map = {
    name     = "devrg1"
    location = "west europe"
  }
  rg2_map = {
    name     = "devrg2"
    location = "west europe"
  }
}

# for_dev_sg_map = {
#   sg1_map = {
#     name                     = "devstoragemap1"
#     location                 = "west europe"
#     resource_group_name      = "devrg1"
#     account_tier             = "Standard"
#     account_replication_type = "LRS"
#   }
# }

for_dev_vnet = {
  vnet1_map_key = {
    name                = "RDSvnet"
    location            = "west europe"
    resource_group_name = "devrg1"
    address_space       = ["10.0.0.0/16"]
  }
}

for_dev_subnet1 = {
  subnet1_map_key = {
    name                 = "RDSsubnet1"
    resource_group_name  = "devrg1"
    address_prefixes     = ["10.0.1.0/24"]
    virtual_network_name = "RDSvnet"
  }
  subnet2_map_key = {
    name                 = "RDSsubnet2"
    resource_group_name  = "devrg1"
    address_prefixes     = ["10.0.3.0/24"]
    virtual_network_name = "RDSvnet"
  }
}


for_dev_pip1 = {
  pip_key_map = {
    name                = "pipname1"
    resource_group_name = "devrg1"
    location            = "west europe"
    allocation_method   = "Static"
  }
}


for_dev_nic = {
  nic_key_map = {
    name                          = "nicname"
    location                      = "west europe"
    resource_group_name           = "devrg1"
    virtual_network_name          = "RDSvnet"
    name_ip                       = "Internal"
    subnet_name                   = "RDSsubnet1"
    private_ip_address_allocation = "Dynamic"
  }
}

for_dev_vm = {
  vm_key_map = {

    name                = "DushyantRishabVM"
    resource_group_name = "devrg1"
    location            = "west europe"
    size                = "Standard_DS1_v2"
    admin_username      = "Rishab"
    admin_password      = "Rishab@123456"
    nicname = "nicname"
  }
}
