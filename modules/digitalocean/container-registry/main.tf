terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}
resource "digitalocean_container_registry" "registry" {
  name                   = var.registry_name
  subscription_tier_slug = var.subscription_tier_slug
}