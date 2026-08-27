#lokale variabler
locals {
  company = var.company
  project = "${var.company}-${var.project}"

  common_tags = {
    Environment  = local.company
    Costcenter   = local.project
    billing_code = var.billing_code
    Owner        = "jp@IaC.no"
  }
}