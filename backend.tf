terraform {
  backend "azurerm" {
    resource_group_name = "berry-state-rg"
    storage_account_name = "berrytfstate28791"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "berrytfstate"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "terraform.berrytfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
