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

variable "subnet_names" {
  type        = list(string)
  description = "Navnene på subnettene som skal opprettes"
  default     = ["web", "app", "data"]
}

variable "subnet_prefixes" {
  type        = list(string)
  description = "Adresseprefiks per subnet, i samme rekkefølge som subnet_names"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
