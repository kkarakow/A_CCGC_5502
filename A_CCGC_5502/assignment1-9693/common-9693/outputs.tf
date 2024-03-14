output "log_analytics_workspace_name" {
  value       = azurerm_log_analytics_workspace.law.name
  description = "The name of the log analytics workspace"
}

output "recovery_services_vault_name" {
  value       = azurerm_recovery_services_vault.rsv.name
  description = "The name of the recovery services vault"
}

output "storage_account_name" {
  value       = azurerm_storage_account.sa.name
  description = "The name of the storage account"
}