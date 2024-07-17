output "firewall_rule_ids" {
  description = "IDs of the firewall rules"
  value       = google_compute_firewall.firewall_rules[*].id
}
