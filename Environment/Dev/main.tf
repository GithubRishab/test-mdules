module "RG" {
  source = "../../Module/resource"
  for_rg = var.for_dev_rg_map
}

# module "SG" {
#   source     = "../../Module/storage"
#   for_sg     = var.for_dev_sg_map
#   depends_on = [module.RG]
# }

module "vnet" {
  source = "../../Module/vnet"
  vnet = var.for_dev_vnet
  depends_on = [ module.RG ]
}

module "subnet" {
  source = "../../Module/subnet"
  subnets = var.for_dev_subnet1
  depends_on = [ module.vnet ]
}

module "publicip" {
  source = "../../Module/public-ip"
  pip = var.for_dev_pip1
  depends_on = [ module.subnet ]
}

module "nic" {
  source = "../../Module/Nic"
  nic = var.for_dev_nic
  depends_on = [ module.publicip ]
}

module "VM" {
  source = "../../Module/virtualMachine"
  virtualmachinee = var.for_dev_vm
  depends_on = [ module.nic, module.vnet,module.publicip,module.RG,module.subnet ]
}
