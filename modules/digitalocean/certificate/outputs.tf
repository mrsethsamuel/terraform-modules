output "certificate_id" {
  description = "ID of the DigitalOcean certificate"
  value       = digitalocean_certificate.certificate.id
}

output "certificate_state" {
  description = "State of the DigitalOcean certificate"
  value       = digitalocean_certificate.certificate.state
}
