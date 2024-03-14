output "vm_hostname" {
  value       = azurerm_windows_virtual_machine.vm.name
  description = "The hostname of the Windows VM."
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

output "vm_domain_name" {
  value       = azurerm_public_ip.vm_pip.fqdn
  description = "The domain name of the VM."
}

output "vm_private_ip" {
  value       = azurerm_windows_virtual_machine.vm.private_ip_address
  description = "The private IP address of the VM."
}

output "vm_public_ip" {
  value       = azurerm_public_ip.vm_pip.ip_address
  description = "The public IP address of the VM."
}

variable "network_interface_ids" {
  description = "List of IDs for the network interfaces to attach to the VMs."
  type        = list(string)
}

variable "vm_name_prefix" {
  description = "Prefix for VM names."
  type        = string
}
