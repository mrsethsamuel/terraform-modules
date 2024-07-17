output "image_id" {
  description = "ID of the DigitalOcean custom image"
  value       = digitalocean_custom_image.custom_image.id
}

output "image_name" {
  description = "Name of the DigitalOcean custom image"
  value       = digitalocean_custom_image.custom_image.name
}

output "image_distribution" {
  description = "Distribution of the DigitalOcean custom image"
  value       = digitalocean_custom_image.custom_image.distribution
}
