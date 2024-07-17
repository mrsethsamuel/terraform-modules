terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

resource "digitalocean_certificate" "certificate" {
  name              = var.certificate_name
  type              = var.certificate_type
  private_key       = var.private_key
  leaf_certificate  = var.leaf_certificate
  certificate_chain = var.certificate_chain
}
