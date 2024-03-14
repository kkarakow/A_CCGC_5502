variable "resource_group_name" {
  description = "The name of the resource group where the VMs and disks are located."
  type        = string
}

variable "vm_ids" {
  description = "A list of VM IDs to which the disks will be attached."
  type        = list(string)
}

variable "location" {
  description = "The Azure region where the disks will be created."
  type        = string
}

variable "disk_size_gb" {
  description = "The size of the disks in GB."
  default     = 10
  type        = number
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