terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

resource "digitalocean_firewall" "example_firewall" {
  name = var.firewall_name
  inbound_rule {
    protocol         = var.inbound_protocol
    port_range       = var.inbound_port_range
    source_addresses = var.inbound_source_addresses
  }
  outbound_rule {
    protocol              = var.outbound_protocol
    port_range            = var.outbound_port_range
    destination_addresses = var.outbound_destination_addresses
  }
}
