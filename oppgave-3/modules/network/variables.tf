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
  type = map(number)

  description = "Subnettnavn => netnum"

  validation {
    condition     = length(var.subnets) >= 3
    error_message = "Det må opprettes minst tre subnett."
  }
}

variable "tags" {
  type = map(string)
}