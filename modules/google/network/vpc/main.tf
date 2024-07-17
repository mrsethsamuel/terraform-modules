module "vpc" {
  source  = "terraform-google-modules/network/google//modules/vpc"
  version = "9.1.0"

  project_id              = var.project_id
  network_name            = var.network_name
  auto_create_subnetworks = var.auto_create_subnetworks
  routing_mode            = var.routing_mode
}
