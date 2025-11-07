variable "resource_group_name" { 
  type = string 
  }
variable "location" { type = string }
variable "my_ip" { 
  type = string
  default = "102.90.102.49/32"
}   # your public IP with /32 suffix