terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}
resource "digitalocean_custom_image" "custom_image" {
  name         = var.image_name
  url          = var.image_url
  distribution = var.distribution
  regions       = var.regions
}
