terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}
resource "digitalocean_container_registry_docker_credentials" "creds" {
  registry_name  = var.registry_name
  write          = true
  expiry_seconds = var.credentials_expiry_seconds
}

