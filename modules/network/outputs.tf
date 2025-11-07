output "public_subnet_id" {
  value = azurerm_subnet.public.id
}

output "mysql_subnet_id" {
  value = azurerm_subnet.mysql.id
}

output "private_dns_zone_id" {
  value = azurerm_private_dns_zone.mysql_dns.id
}

output "private_dns_zone_link_id" {
  value       = azurerm_private_dns_zone_virtual_network_link.dns_link.id
  description = "ID of the Private DNS zone link to the VNet"
}
