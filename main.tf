resource "azuread_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}
resource " storage_account" "example" {
  name                     = "examplestorageacct"
  resource_group_name      = azuread_resource_group.example.name
  location                 = azuread_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azuread_resource_group" "example1" {
  name     = "example-resources2"
  location = "eastus"
}