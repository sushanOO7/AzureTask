module "network" {
  source              = "./modules/network"
  prefix              = var.prefix
  location            = var.location
  resource_group_name = "AzureTaskRG"
}

module "vm" {
  source              = "./modules/vm"
  prefix              = var.prefix
  location            = var.location
  resource_group_name = "AzureTaskRG"
  subnet_id           = module.network.web_subnet_id
  admin_username      = var.admin_username
  ssh_public_key      = file(var.ssh_public_key_path)
}

module "sql" {
  source              = "./modules/sql"
  prefix              = var.prefix
  location            = var.location
  resource_group_name = "AzureTaskRG"
  admin_username      = var.admin_username
  admin_password      = var.sql_admin_password
}
