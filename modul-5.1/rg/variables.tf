variable "rg_name" {
  description = "Navnet på resource group-en. Hentes fra Key Vault-secreten rg-name i workflowen."
  type        = string
}

variable "location" {
  description = "Azure-regionen resource group-en opprettes i. Hentes fra Key Vault-secreten location."
  type        = string
}
