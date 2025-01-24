variable "prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "admin_username" {
  description = "SQL Server admin username"
  type        = string
}

variable "admin_password" {
  description = "SQL Server admin password"
  type        = string
  sensitive   = true
}

variable "database_edition" {
  description = "Edition of the SQL Database"
  type        = string
  default     = "Basic"
}

output "sql_server_name" {
  value = azurerm_mssql_server.main.name
}