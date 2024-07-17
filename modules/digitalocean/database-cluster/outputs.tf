output "cluster_id" {
  description = "ID of the DigitalOcean database cluster"
  value       = digitalocean_database_cluster.my_database_cluster.id
}