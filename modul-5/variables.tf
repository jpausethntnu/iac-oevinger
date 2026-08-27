variable "rg_name" {
  type    = string
  default = "rg-tf-demo-jp"
}

variable "location" {
  type    = string
  default = "West Europe"
}

variable "vnet_name" {
  type    = string
  default = "vnet-tf-demo-01-jp"
}

variable "nsg_name" {
  type    = string
  default = "nsg-tf-demo-jp"
}

variable "subnet_name" {
  type    = string
  default = "snet-tf-demo-001-jp"
}

variable "sa_name" {
  type    = string
  default = "stterraformdemojp"
}

variable "mssql_name" {
  type    = string
  default = "sql-tf-demo-001-jp"
}

variable "mssql_db_name" {
  type    = string
  default = "sqldb-tf-demo-jp"
}

variable "vmss_name" {
  type    = string
  default = "vmss-tf-demo-jp"
}