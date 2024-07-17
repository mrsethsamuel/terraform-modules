output "database_id" {
  description = "ID of the DigitalOcean database"
  value       = digitalocean_database_db.my_database.id
}

output "database_name" {
  description = "Name of the DigitalOcean database"
  value       = digitalocean_database_db.my_database.name
}