terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}
// Define multiple DNS records
resource "digitalocean_record" "example_records" {
  count = length(var.records)

  domain = digitalocean_domain.example_domain.name
  type   = var.records[count.index].type
  name   = var.records[count.index].name
  value  = var.records[count.index].value

  ttl = var.records[count.index].ttl
}
