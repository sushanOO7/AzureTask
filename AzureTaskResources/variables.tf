variable "prefix" {
  description = "Prefix for all resource names"
  type        = string
  #default     = "myproject"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  #default     = "East US"
}

variable "admin_username" {
  description = "Admin username for VMs and SQL"
  type        = string
  #default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key"
  type        = string
  #default     = "~/.ssh/id_rsa.pub"
}

variable "sql_admin_password" {
  description = "Password for SQL Server admin"
  type        = string
  sensitive   = true
}