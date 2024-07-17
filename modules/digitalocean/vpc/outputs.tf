output "vpc_id" {
  description = "ID of the created VPC"
  value       = digitalocean_vpc.example.id
}

output "vpc_urn" {
  description = "URN of the created VPC"
  value       = digitalocean_vpc.example.urn
}

output "vpc_created_at" {
  description = "Date and time when the VPC was created"
  value       = digitalocean_vpc.example.created_at
}

output "vpc_is_default" {
  description = "Indicates whether the VPC is the default one for the region"
  value       = digitalocean_vpc.example.default
}
