terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}
resource "digitalocean_database_firewall" "example" {
  cluster_id = var.cluster_id

  dynamic "rule" {
    for_each = var.firewall_rules
    content {
      type  = rule.value["type"]
      value = rule.value["value"]
    }
  }
}

