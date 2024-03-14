variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure location where the database will be created."
  type        = string
}

variable "db_name" {
  description = "The name of the PostgreSQL database instance."
  type        = string
}

variable "administrator_login" {
  description = "The server admin login username."
  type        = string
}

variable "administrator_password" {
  description = "The server admin login password."
  type        = string
  sensitive   = true
}

variable "sku_name" {
  description = "The SKU name for the PostgreSQL server."
  default     = "GP_Gen5_2"
  type        = string
}

variable "storage_mb" {
  description = "Max storage allowed for the PostgreSQL server in MB."
  default     = 5120
  type        = number
}

variable "versionSQL" {
  description = "The version of PostgreSQL to use."
  default     = "11"
  type        = string
}

variable "auto_grow_enabled" {
  description = "Enable/Disable auto-growing of the storage."
  default     = true
  type        = bool
}

variable "backup_retention_days" {
  description = "The number of days to retain backups."
  default     = 7
  type        = number
}

variable "geo_redundant_backup_enabled" {
  description = "Enable/Disable geo-redundant backups."
  default     = false
  type        = bool
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