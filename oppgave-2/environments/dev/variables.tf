variable "base_name" {
  type    = string
  default = ""
}

variable "rg_name" {
  type    = string
  default = ""
}

variable "location" {
  type    = string
  default = "Norway East"
}

variable "admin_un" {
  type    = string
  default = ""
}

variable "admin_ps" {
  type    = string
  default = ""
}

variable "pc_name" {
  type    = string
  default = "pc"
}

variable "source_net" {
  type    = string
  default = "../../modules/network"
}

variable "source_comp" {
  type    = string
  default = "../../modules/compute"
}

variable "environment" {
  type = string
}

variable "owner" {
  type    = string
  default = "Philip"
}

variable "vm_size" {
  type = string
}




