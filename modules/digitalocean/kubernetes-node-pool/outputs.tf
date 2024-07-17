output "node_pool_id" {
  description = "ID of the created Kubernetes node pool"
  value       = digitalocean_kubernetes_node_pool.example_node_pool.id
}

output "node_pool_name" {
  description = "Name of the created Kubernetes node pool"
  value       = digitalocean_kubernetes_node_pool.example_node_pool.name
}

output "node_pool_node_count" {
  description = "Number of nodes in the created Kubernetes node pool"
  value       = digitalocean_kubernetes_node_pool.example_node_pool.node_count
}
