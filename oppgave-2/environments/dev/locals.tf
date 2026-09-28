locals {


  common_tags = {
    Environment = format(lower(var.environment))
    Managedby   = format(lower(var.owner))
    Owner       = format(lower(var.owner))
  }
}