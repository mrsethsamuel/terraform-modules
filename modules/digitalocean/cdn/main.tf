terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

resource "digitalocean_cdn" "cdn" {
  origin           = var.origin
  custom_domain    = var.custom_domain
  certificate_name = var.certificate_name
  ttl              = var.ttl
}
