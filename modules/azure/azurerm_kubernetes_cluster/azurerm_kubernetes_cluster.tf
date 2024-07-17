module "aks" {
  source  = "Azure/aks/azurerm"
  version = "9.1.0"
  resource_group_name = var.resource_group_name
  location            = var.location
  cluster_name        = var.cluster_name

}
