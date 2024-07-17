output "bucket_name" {
  description = "Name of the DigitalOcean Spaces bucket"
  value       = digitalocean_spaces_bucket.example_bucket.name
}
