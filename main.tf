resource "azurerm_databricks_workspace" "adb" {
  name                = var.workspace_name
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = var.sku
}

output "databricks_id" {
  value = azurerm_databricks_workspace.adb.id
}
