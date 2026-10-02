backend_container_name = "tfstate"
backend_hcl_template = <<EOT
resource_group_name  = "rg-tfstate-jps"
storage_account_name = "sttfjpsbubf1h"
container_name       = "tfstate"
use_azuread_auth     = true

backend_resource_group_name = "rg-tfstate-jps"
backend_storage_account_name = "sttfjpsbubf1h"
keyvault_name = "kv-tf-jpsbubf1h"