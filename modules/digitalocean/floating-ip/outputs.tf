output "floating_ip_address" {
  description = "Allocated floating IP address"
  value       = digitalocean_floating_ip.example_floating_ip.ip_address
}

output "floating_ip_droplet_id" {
  description = "ID of the Droplet to which the floating IP is assigned"
  value       = digitalocean_floating_ip.example_floating_ip.droplet_id
}
