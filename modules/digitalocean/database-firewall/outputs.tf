output "firewall_uuid" {
  description = "The UUID of the created database firewall rule."
  value       = digitalocean_database_firewall.example.id
}
