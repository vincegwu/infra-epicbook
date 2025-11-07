output "db_host" {
  value       = azurerm_mysql_flexible_server.myepicbooksql.fqdn
    description = "Flexible Server private FQDN" 
}