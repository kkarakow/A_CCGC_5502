resource "azurerm_log_analytics_workspace" "law" {
  name                = "law-9693"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags                = var.common_tags
}

resource "azurerm_recovery_services_vault" "rsv" {
  name                = "rsv-9693"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"
  tags                = var.common_tags
}

resource "azurerm_storage_account" "sa" {
  name                     = "stacc9693"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = var.common_tags
}