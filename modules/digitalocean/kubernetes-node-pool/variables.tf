variable "cluster_id" {
  description = "ID of the Kubernetes cluster"
  type        = string
}

variable "node_pool_name" {
  description = "Name of the node pool"
  type        = string
  default     = "example-node-pool"
}

variable "node_size" {
  description = "Size of each node (e.g., s-2vcpu-4gb)"
  type        = string
  default     = "s-2vcpu-4gb"
}

variable "node_count" {
  description = "Number of nodes in the node pool"
  type        = number
  default     = 3
}

variable "node_tags" {
  description = "List of tags for the nodes"
  type        = list(string)
  default     = []
}

variable "auto_scale" {
  description = "Enable node autoscaling"
  type        = bool
  default     = false
}

variable "min_nodes" {
  description = "Minimum number of nodes when autoscaling is enabled"
  type        = number
  default     = 1
}

variable "max_nodes" {
  description = "Maximum number of nodes when autoscaling is enabled"
  type        = number
  default     = 5
}