resource "azurerm_mssql_server" "main" {
  name                         = "${var.prefix}-database-server-1"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
}

resource "azurerm_mssql_database" "main" {
  name      = "${var.prefix}-database-1"
  server_id = azurerm_mssql_server.main.id
}