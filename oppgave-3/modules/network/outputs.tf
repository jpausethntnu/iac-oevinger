output "subnet_ids" {
  description = "Subnet-ID slått opp på subnettnavn."

  value = {
    for name, subnet in azurerm_subnet.subnet :
    name => subnet.id
  }
}