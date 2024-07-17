terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

resource "digitalocean_droplet" "droplet" {
  count     = length(var.droplets)
  name      = var.droplets[count.index].name
  region    = var.droplets[count.index].region
  size      = var.droplets[count.index].size
  image     = var.droplets[count.index].image
  ssh_keys  = var.droplets[count.index].ssh_keys
  tags      = var.droplets[count.index].tags
}

resource "digitalocean_floating_ip" "floating_ip" {
  count = length(var.droplets)
  region = var.droplets[count.index].region
  droplet_id = digitalocean_droplet.droplet[count.index].id
}
