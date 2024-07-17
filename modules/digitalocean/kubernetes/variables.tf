variable "do_token" {
  description = "DigitalOcean API token"
  type        = string
  sensitive   = true
}

variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
}

variable "region" {
  description = "Region where the cluster will be created"
  type        = string
}

variable "k8s_version" {
  description = "Kubernetes version to use for the cluster"
  type        = string
}

variable "node_size" {
  description = "Size of the nodes in the node pool"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the node pool"
  type        = number
}

variable "auto_scale" {
  description = "Enable auto-scaling for the node pool"
  type        = bool
  default     = false
}

variable "min_nodes" {
  description = "Minimum number of nodes for auto-scaling"
  type        = number
  default     = 1
}

variable "max_nodes" {
  description = "Maximum number of nodes for auto-scaling"
  type        = number
  default     = 3
}

variable "node_tags" {
  description = "Tags to apply to the nodes in the node pool"
  type        = list(string)
  default     = []
}

variable "node_labels" {
  description = "Labels to apply to the nodes in the node pool"
  type        = map(string)
  default     = {}
}
