variable "base_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "location" {
  type = string
}

variable "address_space" {
  type = string
}

variable "subnets" {
  type = map(number)
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

variable "owner" {
  type = string
}