module "kubernetes_engine" {
  source                      = "terraform-google-modules/kubernetes-engine/google"
  version                     = "31.1.0"
  project_id                  = var.project_id
  subnetwork                  = var.subnetwork
  network                     = var.network
  name                        = var.name
  ip_range_services           = var.ip_range_services
  ip_range_pods               = var.ip_range_pods
  regional                    = var.regional
  region                      = var.region
  enable_binary_authorization = var.enable_binary_authorization
}
