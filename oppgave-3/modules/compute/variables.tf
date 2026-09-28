variable "base_name" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "admin_un" {
  type = string
}

variable "admin_ps" {
  type      = string
  sensitive = true
}

variable "pc_name" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "tags" {
  type = map(string)
}