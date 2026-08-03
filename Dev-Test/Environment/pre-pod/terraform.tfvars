 rg_group ={
    rg1 = {
      name     = "testrg1"
      location = "eastus"
    }

     rg2 = {
      name     = "testrg2"
      location = "eastus"
    }

     rg3 = {
      name     = "testrg3"
      location = "eastus"
    }



  }

 vnet = {
    vnet1 = {
      name          = "vnet1"
      location      = "eastus"
      rg_name       = "testrg1"
      address_space = ["10.0.0.0/16"]
    }
  }

subnet = {
    subnet1 = {
      name             = "subnet1"
      rg_name          = "testrg1"
      vnet_name        = "vnet1"
      address_prefixes = ["10.0.1.0/24"]
    }

    subnet2 = {
      name             = "subnet2"
      rg_name          = "testrg1"
      vnet_name        = "vnet1"
      address_prefixes = ["10.0.2.0/24"]
    }
  }


publicip = {
    pip1 = {
        name = "public_ip1"
        rg_name = "testrg1"
        location = "eastus"
        allocation_method = "Static"
    }

    pip2 = {
        name = "public_ip2"
        rg_name = "testrg1"
        location = "eastus"
        allocation_method = "Static"
    }

    
}


virtual_vm = {
  vm1 = {
    nic_name        = "nic-1"
    location    = "eastus"
    rg_name     = "testrg1"
    nic_subnet_name = "subnet1"
    nic_vnet_name   = "vnet1"
    nic_pip_name    = "public_ip1"
    vm_name = "Frontend-vm"
    vm_size = "Standard_D2ads_v7"
    admin_username = "devopsadmin"
    admin_password = "DevOps@123"
  }

  vm2 = {
    nic_name        = "nic-2"
    location    = "eastus"
    rg_name     = "testrg1"
    nic_subnet_name = "subnet2"
    nic_vnet_name   = "vnet1"
    nic_pip_name    = "public_ip2"
    vm_name = "Backend-vm"
    vm_size = "Standard_D2ads_v7"
    admin_username = "devopsadmin"
    admin_password = "DevOps@123"
  }


}