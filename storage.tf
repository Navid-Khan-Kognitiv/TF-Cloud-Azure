resource "azurerm_storage_account" "storage" {
  name                     = "storageaccount${var.env}"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = local.common_tags
}