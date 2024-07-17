provider "azurerm" {
  features {}
}

module "resource_group" {
  source   = "../../modules/azure/azurerm_resource_group"
  name     = var.resource_group_name
  location = var.location
}

module "virtual_network" {
  source              = "../../modules/azure/azurerm_virtual_network"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  name                = var.virtual_network_name
  address_space       = var.address_space
  depends_on          = [module.resource_group]
}

module "subnet" {
  source              = "../../modules/azure/azurerm_subnet"
  resource_group_name = module.resource_group.resource_group_name
  name                = var.subnets[0].name
  vnet_name           = module.virtual_network.virtual_network_name
  depends_on          = [module.virtual_network]
}

module "kubernetes_cluster" {
  source              = "../../modules/azure/azurerm_kubernetes_cluster"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  cluster_name        = var.cluster_name
  depends_on          = [module.virtual_network]
}


module "virtual_machine" {
  source              = "../../modules/azure/azurerm_virtual_machine"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  name                = var.vm_name
  depends_on          = [module.resource_group]
}
