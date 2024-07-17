output "droplet_ids" {
  description = "IDs of the created Droplets"
  value       = digitalocean_droplet.droplet.*.id
}

output "droplet_ips" {
  description = "Public IP addresses of the created Droplets"
  value       = digitalocean_droplet.droplet.*.ipv4_address
}

output "floating_ips" {
  description = "Floating IP addresses of the created Droplets"
  value       = digitalocean_floating_ip.floating_ip.*.ip_address
}
