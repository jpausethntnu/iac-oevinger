variable "shortname" {
  type        = string
  description = "jps"
}

variable "location" {
  type        = string
  default     = "norwayeast"
  description = "Azure-regionen backend-en opprettes i."
}

variable "subscription_id" {
  type        = string
  default     = null
  description = "a3adf20e-4966-4afb-b717-4de1baae6db1"
}

variable "pipeline_principal_id" {
  description = "Object-ID til service principal-en workflowen logger inn som"
  type        = string
}
