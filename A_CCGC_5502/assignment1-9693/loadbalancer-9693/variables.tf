variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure location where the load balancer will be created."
  type        = string
}

variable "frontend_ip_name" {
  description = "The name of the frontend IP configuration."
  default     = "LoadBalancerFrontend"
}

variable "backend_address_pool_name" {
  description = "The name of the backend address pool."
  default     = "BackendAddressPool"
}

variable "load_balancer_name" {
  description = "The name of the load balancer."
  type        = string
}

variable "vm_network_interface_ids" {
  description = "List of network interface IDs of the VMs to be attached to the load balancer."
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