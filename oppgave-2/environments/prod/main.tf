terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}


module "network" {
  source      = "../../modules/network"
  base_name   = format("prod-nw-%s", lower(var.base_name))
  location    = var.location
  rg_name     = azurerm_resource_group.rg.name
  tags        = local.common_tags

}

module "compute" {
  source      = "../../modules/compute"
  base_name   = format("prod-cmp-%s", lower(var.base_name))
  location    = var.location
  rg_name     = azurerm_resource_group.rg.name
  subnet_id   = module.network.subnet_id
  admin_un    = var.admin_un
  admin_ps    = var.admin_ps
  pc_name     = format("cmp-p-%s", lower(var.pc_name))
  vm_size     = var.vm_size
  tags        = local.common_tags

}

resource "azurerm_resource_group" "rg" {
  name     = format("rg-%s", lower(var.base_name))
  location = lower(var.location)
  tags     = local.common_tags
}
