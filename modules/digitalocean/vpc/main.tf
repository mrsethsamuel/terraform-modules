terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

resource "digitalocean_vpc" "example" {
  name        = var.vpc_name
  region      = var.vpc_region
  description = var.vpc_description
  ip_range    = var.vpc_ip_range
}

