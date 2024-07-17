terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

resource "digitalocean_project" "example_project" {
  name        = var.project_name
  description = var.project_description
  purpose     = var.project_purpose
}
