variable "location" {
  description = "Azure region"
  type        = string
  default     = "australiaeast"  # change as needed
}

variable "resource_group_name" {
  description = "Resource Group for resources"
  type        = string
}

variable "admin_username" {
  description = "Admin user for VM"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "SSH public key string"
  type        = string
}

variable "db_username" {
  description = "MySQL admin username"
  type        = string
  default     = "epicuser"
}

variable "db_password" {
  description = "MySQL admin password (sensitive — use Key Vault)"
  type        = string
  default     = "Berry123!@"  # For production, use Key Vault
  sensitive   = true
}

variable "vm_size" {
  description = "VM size"
  type        = string
  default     = "Standard_B1s"
}


variable "public_ip_sku" {
  description = "SKU of the public IP to use for the VM"
  type        = string
  default     = "Standard"
}

variable "my_ip" {
  description = "Your public IP address with /32 suffix"
  type        = string
  default     = "102.90.102.49/32"   # <-- replace with your public IP
}


variable "admin_password" {
  description = "Admin password for MySQL Flexible Server"
  type        = string
  default     = "Berry123!@"  # For production, use Key Vault
  sensitive   = true
}

variable "mysql_version" {
  description = "MySQL server version"
  type        = string
  default     = "8.0.21"
}

variable "mysql_sku_name" {
  description = "MySQL SKU name"
  type        = string
  default     = "Standard_B1ms"
}