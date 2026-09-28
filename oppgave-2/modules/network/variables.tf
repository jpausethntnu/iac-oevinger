variable "base_name" {
  type    = string
}

variable "rg_name" {
  type    = string
}

variable "location" {
  type    = string
}



variable "tags" {
  type = map(string)
}

variable "subnets" {
  type        = map(number)
  description = "Subnett som skal opprettes: navn => netnum innenfor adresserommet"

  default = {
    web  = 0
    app  = 1
    data = 2
  }
}

variable "address_space" {
  type        = string
  description = "Adresserommet vnet-et disponerer, som CIDR – for eksempel 10.10.0.0/16"
}
