output "subnet_ids" {
  value       = azurerm_subnet.subnet[*].id
  description = "ID-ene til alle subnettene, i samme rekkefølge som subnet_names"
}