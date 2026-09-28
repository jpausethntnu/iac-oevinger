//oppretter et virtuelt nettverk med minst ett subnet, og skal ha en outputs.tf som eksponerer subnet-ID-en.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

resource "azurerm_network_security_group" "nsg" {
  name                = format("nsg-%s", lower(var.base_name))
  location            = format(lower(var.location))
  resource_group_name = var.rg_name
  tags = var.tags
}

resource "azurerm_virtual_network" "vnet" {
  name                = format("vnet-%s", lower(var.base_name))
  location            = format(lower(var.location))
  resource_group_name = var.rg_name
  tags = var.tags
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  for_each = var.subnets

  name                 = format("snet-%s", each.key)
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [cidrsubnet(var.address_space, 8, each.value)]
}

resource "azurerm_subnet_network_security_group_association" "snet_nsg" {
  for_each = azurerm_subnet.subnet

  subnet_id                 = each.value.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}
