terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}
resource "digitalocean_database_db" "my_database" {
  cluster_id = var.cluster_id
  name       = var.db_name
}