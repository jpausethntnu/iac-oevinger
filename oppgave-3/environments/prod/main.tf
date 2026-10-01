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

resource "azurerm_resource_group" "rg" {
  name     = "rg-${lower(var.base_name)}"
  location = lower(var.location)
  tags     = local.common_tags
}

module "stack" {
  source = "../../stacks"

  base_name     = var.base_name
  environment   = var.environment
  location      = var.location
  address_space = var.address_space
  subnets       = var.subnets

  admin_un = var.admin_un
  admin_ps = var.admin_ps
  pc_name  = var.pc_name
  vm_size  = var.vm_size

  rg_name = azurerm_resource_group.rg.name
  tags    = local.common_tags
}