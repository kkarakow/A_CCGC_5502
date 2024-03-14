output "resource_group_name" {
  description = "The name of the provisioned resource group"
  value       = module.rgroup-9693.resource_group_name
}

output "virtual_network_name" {
  description = "The name of the provisioned virtual network"
  value       = module.network-9693.virtual_network_name
}

output "subnet_name" {
  description = "The name of the provisioned subnet"
  value       = module.network-9693.subnet_name
}

# Outputs for Linux VMs
output "linux_vm_names" {
  description = "The hostnames of the provisioned Linux VMs"
  value       = module.vmlinux-9693.vm_names
}

output "linux_vm_public_ips" {
  description = "The public IP addresses of the provisioned Linux VMs"
  value       = module.vmlinux-9693.vm_public_ips
}

# Outputs for Windows VM
output "windows_vm_name" {
  description = "The hostname of the provisioned Windows VM"
  value       = module.vmwindows-9693.vm_name
}

output "windows_vm_public_ip" {
  description = "The public IP address of the provisioned Windows VM"
  value       = module.vmwindows-9693.vm_public_ip
}