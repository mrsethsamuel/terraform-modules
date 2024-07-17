output "firewall_id" {
  description = "ID of the created firewall"
  value       = digitalocean_firewall.example_firewall.id
}

output "firewall_name" {
  description = "Name of the created firewall"
  value       = digitalocean_firewall.example_firewall.name
}
