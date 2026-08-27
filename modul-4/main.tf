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

module "resource-group" {
    source      = "./resource-group"
    base_name   = "TFDemo"
    location    = "Norway East"
}

module "storage-account" {
  source    = "./storage-account"
  base_name = "TFDemo"
  rg_name   = module.resource-group.rg_name
  location  = "Norway East"
}