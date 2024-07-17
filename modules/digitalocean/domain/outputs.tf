output "domain_id" {
  description = "ID of the created domain"
  value       = digitalocean_domain.example_domain.id
}

output "domain_name" {
  description = "Name of the created domain"
  value       = digitalocean_domain.example_domain.name
}

output "domain_ip_address" {
  description = "IP address associated with the domain"
  value       = digitalocean_domain.example_domain.ip_address
}
