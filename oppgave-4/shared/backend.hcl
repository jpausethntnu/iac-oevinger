backend_container_name = "tfstate"
backend_hcl_template = <<EOT
resource_group_name  = "rg-tfstate-yes"
storage_account_name = "sttfyesd8129v"
container_name       = "tfstate"
use_azuread_auth     = true