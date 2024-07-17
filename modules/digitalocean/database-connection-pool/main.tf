terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

resource "digitalocean_database_connection_pool" "my_connection_pool" {
  cluster_id = var.cluster_id
  name       = var.name
  mode       = var.mode
  size       = var.size
  db_name    = var.db_name
}
