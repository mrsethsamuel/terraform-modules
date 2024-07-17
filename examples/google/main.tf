module "project" {
  source     = "../../modules/google/project"
  project_id = var.project_id
  name       = var.project_name
}

module "vpc" {
  source                  = "../../modules/google/network/vpc"
  project_id              = var.project_id
  network_name            = var.network_name
  auto_create_subnetworks = "false"
  routing_mode            = "GLOBAL"
}

module "subnet" {
  source     = "../../modules/google/network/subnet"
  subnets    = var.subnets
  network_id = module.vpc.vpc_network_id
}

module "kubernetes_engine" {
  source                      = "../../modules/google/kubernetes-engine"
  project_id                  = var.project_id
  subnetwork                  = module.subnet.subnet_ids[0]
  network                     = var.network_name
  name                        = var.cluster_name
  ip_range_services           = var.ip_range_services
  ip_range_pods               = var.ip_range_pods
  regional                    = var.regional
  region                      = var.region
  enable_binary_authorization = var.enable_binary_authorization
  depends_on                  = [module.vpc, module.subnet]
}

# Create a artifact registry
module "artifact_registry" {
  source        = "../../modules/google/artifact-registry"
  location      = var.region
  repository_id = "${var.project_id}-artifact-registry"
  description   = "Artifact Registry for ${var.project_id}"
}


module "service_account" {
  source        = "../../modules/google/compute/service-account"
  project_id    = var.project_id
  names         = var.vm-sa-name
  prefix        = var.vm_name
  project_roles = var.project_roles

}


module "compute-vm" {
  source                 = "../../modules/google/compute/virtual-machine"
  machine_type           = var.machine_type
  zone                   = "${var.region}-a"
  service_account_email  = module.service_account.service_account_emails[0]
  service_account_scopes = []
  network                = module.vpc.vpc_network_id
  subnetwork             = module.subnet.subnet_ids[0]
  name                   = var.vm_name
  tags                   = var.tags
  metadata               = var.metadata
}
