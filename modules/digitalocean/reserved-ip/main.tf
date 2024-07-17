terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

resource "digitalocean_floating_ip" "example_reserved_ip" {
  droplet_id = var.droplet_id  # ID of the Droplet to assign the Floating IP to
  region     = var.region      # Region where the Floating IP is reserved
}
