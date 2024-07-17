output "connection_pool_id" {
  description = "ID of the DigitalOcean database connection pool"
  value       = digitalocean_database_connection_pool.my_connection_pool.id
}
