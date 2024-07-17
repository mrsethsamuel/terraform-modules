output "project_id" {
  description = "ID of the created DigitalOcean project"
  value       = digitalocean_project.example_project.id
}

output "project_name" {
  description = "Name of the created DigitalOcean project"
  value       = digitalocean_project.example_project.name
}

output "project_description" {
  description = "Description of the created DigitalOcean project"
  value       = digitalocean_project.example_project.description
}

output "project_purpose" {
  description = "Purpose of the created DigitalOcean project"
  value       = digitalocean_project.example_project.purpose
}
