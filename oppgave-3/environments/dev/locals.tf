locals {
  common_tags = {
    Environment = lower(var.environment)
    Owner       = lower(var.owner)
    ManagedBy   = "terraform"
  }
}