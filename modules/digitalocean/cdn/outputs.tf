output "cdn_id" {
  description = "ID of the DigitalOcean CDN"
  value       = digitalocean_cdn.cdn.id
}

output "endpoint" {
  description = "The CDN endpoint"
  value       = digitalocean_cdn.cdn.endpoint
}

output "custom_domain" {
  description = "The custom domain configured for the CDN"
  value       = digitalocean_cdn.cdn.custom_domain
}
