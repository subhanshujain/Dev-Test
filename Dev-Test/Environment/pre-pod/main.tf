module "resource_group" {
  source = "../../Modules/Resource_Group"
  resource_group = var.rg_group
}
 

module "virtual_network" {
    depends_on = [module.resource_group]
  source = "../../Modules/Virtual_Network"
  virtual_network = var.vnet
}


module "subnet_network" {
    depends_on = [module.resource_group,module.virtual_network]
  source = "../../Modules/Subnet_Network"
  subnet_network = var.subnet
}

module "public_ip" {
    depends_on = [module.resource_group]
    source = "../../Modules/Public_IP"
    public_ip = var.publicip
 
}

module "virtual_machine" {
    depends_on = [module.resource_group,module.subnet_network,module.virtual_network,module.public_ip]
    source = "../../Modules/VM"
    vms = var.virtual_vm

     
}