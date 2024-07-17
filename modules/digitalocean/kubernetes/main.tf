terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

resource "digitalocean_kubernetes_cluster" "cluster" {
  name    = var.cluster_name
  region  = var.region
  version = var.k8s_version

  node_pool {
    name       = "default-pool"
    size       = var.node_size
    node_count = var.node_count

    tags = var.node_tags

    auto_scale = var.auto_scale
    min_nodes  = var.min_nodes
    max_nodes  = var.max_nodes

    labels = var.node_labels
  }
}
