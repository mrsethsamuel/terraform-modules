terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

resource "digitalocean_spaces_bucket" "example_bucket" {
  name   = var.bucket_name
  region = var.bucket_region

  acl = var.bucket_acl

  versioning {
    enabled = var.bucket_versioning_enabled
  }

  lifecycle_rule {
    id      = var.lifecycle_rule_id
    enabled = var.lifecycle_rule_enabled

    prefix = var.lifecycle_rule_prefix
    
    expiration {
      days = var.lifecycle_rule_expiration_days
    }
  }
}
