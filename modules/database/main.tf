
resource "azurerm_mysql_flexible_server" "myepicbooksql" {
  name                = "epicbook-mysql"
  resource_group_name = var.resource_group_name
  location            = var.location

  administrator_login          = var.db_username
  administrator_password       = var.db_password
  sku_name                     = "B_Standard_B1ms"   # dev grade - change for prod
  version                      = "8.0.21"
  delegated_subnet_id          = var.subnet_id
  private_dns_zone_id          = var.private_dns_zone_id
  depends_on = [ var.private_dns_zone_link_id ]

  #public_network_access        = "Disabled"
}

resource "azurerm_mysql_flexible_database" "epicbook_db" {
  name                = "bookstore"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_flexible_server.myepicbooksql.name
  charset             = "utf8mb4"
  collation           = "utf8mb4_unicode_ci"
}