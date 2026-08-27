variable "subnet_id" {
  type        = string
  default     = ""
  description = "ID-en til subnet-et VM-ene skal kobles på"
}

variable "vmss_name" {
  type    = string
  default = "vmss-01-jp"
}

variable "rg_name" {
  type    = string
  default = "vmss-jp"
}

variable "location" {
  type    = string
  default = "Norway East"
}

variable "computer_name_prefix" {
  type    = string
  default = "jp-comp"
}
