module "network" {
  source = "../modules/network"

  base_name     = "${var.environment}-nw-${var.base_name}"
  location      = var.location
  rg_name       = var.rg_name
  address_space = var.address_space
  subnets       = var.subnets
  tags          = var.tags
}

module "compute" {
  source = "../modules/compute"

  base_name = "${var.environment}-cmp-${var.base_name}"
  location  = var.location
  rg_name   = var.rg_name
  subnet_id = module.network.subnet_ids["app"]

  admin_un = var.admin_un
  admin_ps = var.admin_ps
  pc_name  = var.pc_name
  vm_size  = var.vm_size
  tags     = var.tags
}