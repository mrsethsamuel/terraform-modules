terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

resource "digitalocean_floating_ip" "example_floating_ip" {
  region = var.region
  droplet_id = var.droplet_id
}
