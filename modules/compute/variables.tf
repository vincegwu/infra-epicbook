variable "resource_group_name" { type = string }
variable "location" { type = string }
variable "admin_username" { type = string }
variable "ssh_public_key" { type = string }
variable "subnet_id" { type = string }          # public-subnet id
variable "db_host" { type = string }
variable "db_username" { type = string }
variable "db_password" {
  type      = string
  default   = "Berry123!@"  # For production, use Key Vault
  sensitive = true
}


variable "public_ip_sku" {
  description = "SKU of the Public IP Address (Basic or Standard)"
  type        = string
  default     = "Standard"
}