provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "databricks-rg"
  location = "East US"
}

resource "azurerm_databricks_workspace" "workspace" {
  name                = "weather-databricks-ws"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "standard"
}

resource "azurerm_databricks_cluster" "weather_cluster" {
  workspace_id = azurerm_databricks_workspace.workspace.id
  cluster_name = "weather-cluster"
  spark_version = "13.3.x-scala2.12"
  node_type_id = "Standard_DS3_v2"
  autotermination_minutes = 20
  num_workers = 1
}
