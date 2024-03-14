variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location to deploy the resources"
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network"
  default     = "9693-VNET"
}

variable "subnet_name" {
  description = "The name of the subnet"
  default     = "9693-SUBNET"
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