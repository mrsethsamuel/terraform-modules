output "docker_credentials" {
  description = "Docker credentials for the DigitalOcean container registry"
  value       = digitalocean_container_registry_docker_credentials.creds.docker_credentials
}
