variable "vm_count" {
  description = "The number of VMs to create"
  type        = number
}

variable "vm_name_prefix" {
  description = "Prefix for the VM name"
  type        = string
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type = map(string)
  default = {
    Assignment = "CCGC 5502 Automation Assignment"
    Name = "kate.karakow" 
    ExpirationDate = "2024-12-31"
    Environment = "Learning"
  }
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where to create the VMs"
  type        = string
}

variable "vm_size" {
  description = "VM size."
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "The admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "The admin password for the VM"
  type        = string
  sensitive   = true
}

variable "subnet_id" {
  description = "The ID of the subnet where the VMs will be connected"
  type        = string
}
variable "availability_set_id" {
  description = "The ID of the availability set in which the VM will be placed."
  type        = string
}

variable "storage_account_uri" {
  description = "The URI of the storage account for boot diagnostics."
  type        = string
}

variable "network_interface_id" {
  description = "ID of the network interface for the VM."
  type        = string
}

variable "vm_name" {
  description = "Name for the Windows VM."
  type        = string
}