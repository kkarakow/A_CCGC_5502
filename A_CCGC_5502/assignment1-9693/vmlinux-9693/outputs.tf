output "vm_hostnames" {
  value = { for vm in azurerm_linux_virtual_machine.vm : vm.name => vm.computer_name }
  description = "The hostnames of the Linux VMs"
}

output "vm_private_ips" {
  value = { for vm in azurerm_linux_virtual_machine.vm : vm.name => vm.private_ip_address }
  description = "The private IP addresses of the VMs"
