variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure location for the VMs"
  type        = string
}

variable "vm_size" {
  description = "VM size"
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Admin username for the VMs"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VMs"
  type        = string
  sensitive   = true
}

variable "network_interface_ids" {
  description = "IDs of the network interfaces for the VMs"
  type        = list(string)
}

variable "availability_set_id" {
  description = "The ID of the availability set in which the VMs will be placed"
  type        = string
}

variable "storage_account_uri" {
  description = "The URI of the storage account for boot diagnostics"
  type        = string
}

variable "vm_names" {
  description = "Names for the Linux VMs"
  type        = list(string)
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