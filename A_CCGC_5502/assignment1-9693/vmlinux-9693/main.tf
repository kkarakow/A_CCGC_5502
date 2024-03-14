resource "azurerm_availability_set" "vmset" {
  name                = "vmset-9693"
  location            = var.location
  resource_group_name = var.resource_group_name
  platform_fault_domain_count = 2
  platform_update_domain_count = 2
  tags                = var.common_tags
}

resource "azurerm_linux_virtual_machine" "vm" {
  for_each = { for idx, name in var.vm_names : name => idx }

  name                  = each.key
  resource_group_name   = var.resource_group_name
  location              = var.location
  size                  = var.vm_size
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  network_interface_ids = [element(var.network_interface_ids, each.value)]
  availability_set_id   = azurerm_availability_set.vmset.id
  os_disk {
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "OpenLogic"
    offer     = "CentOS"
    sku       = "8_2"
    version   = "latest"
  }
  boot_diagnostics {
    storage_account_uri = var.storage_account_uri
  }

  tags = var.common_tags

  extension {
    name                       = "NetworkWatcherAgentLinux"
    publisher                  = "Microsoft.Azure.NetworkWatcher"
    type                       = "NetworkWatcherAgentLinux"
    type_handler_version       = "1.4"
  }

  extension {
    name                       = "AzureMonitorLinuxAgent"
    publisher                  = "Microsoft.Azure.Monitor"
    type                       = "AzureMonitorLinuxAgent"
    type_handler_version       = "1.0"
  }

  provisioner "remote-exec" {
    inline = [
      "echo ${each.key} has been provisioned"
    ]
  }
}

resource "azurerm_public_ip" "vm_pip" {
  for_each = { for name in var.vm_names : name => name }
  
  name                = "${each.value}-pip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Dynamic"
  domain_name_label   = "${each.value}-${substr(md5(each.value), 0, 4)}"
  tags                = var.common_tags
}
