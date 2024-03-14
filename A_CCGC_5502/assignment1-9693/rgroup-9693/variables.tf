variable "name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where the resource group should be created"
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