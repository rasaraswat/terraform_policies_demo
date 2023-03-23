resource "azurerm_storage_account" "storagepracterraform" {
  name = "appstorageterraform"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  account_tier = "Standard"
  account_replication_type = "LRS"
  allow_nested_items_to_be_public = false

  depends_on = [
    azurerm_resource_group.rg
  ]

  tags = {
    environment = "development"
    tfpolicy = "demo"
  }
}

