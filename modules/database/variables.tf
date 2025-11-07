variable "resource_group_name" { type = string }
variable "location" { type = string }
variable "subnet_id" { type = string }               # mysql-subnet id
variable "private_dns_zone_id" { type = string }    # id from network module
variable "private_dns_zone_link_id" { type = string } # id from network module
variable "db_username" { type = string }
variable "db_password" {
  type      = string
  default = "Berry123!@"  # For production, use Key Vault
  sensitive = true
}