resource "google_compute_firewall" "firewall_rules" {
  count = length(var.firewall_rules)

  project = var.project_id
  name    = var.firewall_rules[count.index].name
  network = var.network_name

  description             = var.firewall_rules[count.index].description
  priority                = var.firewall_rules[count.index].priority
  direction               = var.firewall_rules[count.index].direction
  destination_ranges      = var.firewall_rules[count.index].destination_ranges
  source_ranges           = var.firewall_rules[count.index].source_ranges
  source_tags             = var.firewall_rules[count.index].source_tags
  source_service_accounts = var.firewall_rules[count.index].source_service_accounts
  target_tags             = var.firewall_rules[count.index].target_tags
  target_service_accounts = var.firewall_rules[count.index].target_service_accounts

  dynamic "allow" {
    for_each = var.firewall_rules[count.index].allow
    content {
      protocol = allow.value.protocol
      ports    = allow.value.ports
    }
  }

  dynamic "deny" {
    for_each = var.firewall_rules[count.index].deny
    content {
      protocol = deny.value.protocol
      ports    = deny.value.ports
    }
  }

  log_config {
    metadata = var.firewall_rules[count.index].log_config.metadata
  }

  lifecycle {
    ignore_changes = [
      allow,
      deny,
    ]
  }
}
