terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

resource "digitalocean_floating_ip_assignment" "example_assignment" {
  ip_address = digitalocean_floating_ip.example_reserved_ip.ip_address
  droplet_id = digitalocean_droplet.droplet.id
}