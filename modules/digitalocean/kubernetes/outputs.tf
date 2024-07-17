output "kubeconfig" {
  description = "Kubeconfig for the Kubernetes cluster"
  value       = digitalocean_kubernetes_cluster.cluster.kube_config[0].raw_config
}

output "cluster_id" {
  description = "ID of the Kubernetes cluster"
  value       = digitalocean_kubernetes_cluster.cluster.id
}

output "node_pool_id" {
  description = "ID of the default node pool"
  value       = digitalocean_kubernetes_cluster.cluster.node_pool[0].id
}
