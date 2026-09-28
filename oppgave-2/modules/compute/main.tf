//oppretter et nettverkskort og en virtuell maskin, og skal ta imot subnet-ID-en som en variabel. Den skal aldri inneholde en subnet-ID skrevet for hånd.
resource "azurerm_windows_virtual_machine_scale_set" "vmss" {
  name                = format("vmss-%s", lower(var.base_name))
  resource_group_name = var.rg_name
  location            = format(lower(var.location))
  sku                 = var.vm_size
  instances           = 2
  admin_username      = lower(var.admin_un)
  admin_password      = var.admin_ps
  computer_name_prefix = var.pc_name
  tags = var.tags

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter-Server-Core"
    version   = "latest"
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  network_interface {
    name    = "internal"
    primary = true

    ip_configuration {
      name      = "internal"
      primary   = true
      subnet_id = var.subnet_id
    }
  }
}

