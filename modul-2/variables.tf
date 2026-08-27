#variabel for lokasjon
variable "location" {
  type        = string
  description = "Deployment Location"
  default     = "West Europe"
}

#variabel for resursgrupper
variable "rgname" {
  type        = string
  description = "jp resource group"
  default     = "rg-demo-terraform"
}

#variabel for storage accounts         
variable "saname" {
  type        = string
  description = "jp storage group"
}

#comapny name
variable "company" {
  type        = string
  description = "Company name"
}

#project name
variable "project" {
  type        = string
  description = "Project name"
}

#...billing?
variable "billing_code" {
  type        = string
  description = "Billing code - identifies which department is charged"
}