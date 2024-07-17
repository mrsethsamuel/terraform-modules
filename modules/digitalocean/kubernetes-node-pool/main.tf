terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

resource "digitalocean_kubernetes_node_pool" "example_node_pool" {
  cluster_id      = var.cluster_id
  name            = var.node_pool_name
  size            = var.node_size
  node_count      = var.node_count
  tags            = var.node_tags
  auto_scale      = var.auto_scale
  min_nodes       = var.min_nodes
  max_nodes       = var.max_nodes
}
