resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source              = "./modules/network"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "database" {
  source              = "./modules/database"
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_id           = module.network.mysql_subnet_id
  private_dns_zone_id = module.network.private_dns_zone_id
  private_dns_zone_link_id = module.network.private_dns_zone_link_id
  db_username         = var.db_username
  db_password         = var.db_password

}


module "compute" {
  source              = "./modules/compute"
  resource_group_name = var.resource_group_name
  location            = var.location
  admin_username      = var.admin_username
  ssh_public_key      = var.ssh_public_key
  subnet_id           = module.network.public_subnet_id
  db_host             = module.database.db_host
  db_username         = var.db_username
  db_password         = var.db_password
  public_ip_sku       = var.public_ip_sku

}