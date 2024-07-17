output "registry_id" {
  description = "ID of the DigitalOcean container registry"
  value       = digitalocean_container_registry.registry.id
}

output "registry_name" {
  description = "Name of the DigitalOcean container registry"
  value       = digitalocean_container_registry.registry.name
}

output "registry_endpoint" {
  description = "Endpoint of the DigitalOcean container registry"
  value       = digitalocean_container_registry.registry.endpoint
}
