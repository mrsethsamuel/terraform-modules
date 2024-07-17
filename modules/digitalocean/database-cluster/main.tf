terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

# Define database cluster resource
resource "digitalocean_database_cluster" "my_database_cluster" {
  name       = var.cluster_name
  engine     = var.engine
  version    = var.engine_version
  region     = var.region
  size       = var.size
  node_count = var.node_count

  tags = var.tags

  maintenance_window {
    day  = var.maintenance_window_day
    hour = var.maintenance_window_hour
  }

}
