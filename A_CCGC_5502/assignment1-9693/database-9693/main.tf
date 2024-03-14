resource "azurerm_postgresql_server" "postgres" {
  name                = var.db_name
  location            = var.location
  resource_group_name = var.resource_group_name
  ssl_enforcement_enabled = true
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_password

  sku_name   = var.sku_name
  storage_mb = var.storage_mb
  version    = var.versionSQL

  auto_grow_enabled           = var.auto_grow_enabled
  backup_retention_days       = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled
  public_network_access_enabled = true

  tags = var.common_tags
}

resource "azurerm_postgresql_database" "db" {
  name                = "exampledb"
  resource_group_name = azurerm_postgresql_server.postgres.resource_group_name
  server_name         = azurerm_postgresql_server.postgres.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}
