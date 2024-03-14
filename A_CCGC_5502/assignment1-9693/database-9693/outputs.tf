output "postgresql_server_name" {
  value       = azurerm_postgresql_server.postgres.name
  description = "The name of the PostgreSQL Server."
}
