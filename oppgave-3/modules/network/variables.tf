variable "base_name" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "address_space" {
  type = string
}

variable "subnets" {
  type        = map(number)
  description = "Subnettnavn => netnum innenfor adresserommet"
}

variable "tags" {
  type = map(string)
}