resource "random_pet" "prefix" {}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "default" {
  name     = "drp-${random_pet.prefix.id}-rg"
  location = var.region

  tags = {
    environment = "DRP"
  }
}

resource "azurerm_kubernetes_cluster" "default" {
  name                = "drp-${random_pet.prefix.id}-aks"
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  dns_prefix          = "drp-${random_pet.prefix.id}-k8s"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_D2_v5"
    os_disk_size_gb = 30
  }

  identity {
    type = "SystemAssigned"
  }

  role_based_access_control_enabled = true

  azure_active_directory_role_based_access_control {
    managed = true
    # Gives admin to specific groups, by GUID
    admin_group_object_ids = [ "585cbc3e-bef2-4d80-b729-c0dd44c6bbf1", "d094342a-5317-4b38-aa18-40bbb72956ca" ]
    azure_rbac_enabled = true
  }

  tags = {
    environment = "DRP"
  }
}
