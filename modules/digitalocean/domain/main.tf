terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

resource "digitalocean_domain" "example_domain" {
  name = var.domain_name
  ip_address = var.domain_ip_address
}
