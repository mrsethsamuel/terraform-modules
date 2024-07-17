variable "cluster_name" {
  description = "Name of the database cluster"
  type        = string
}

variable "engine" {
  description = "Database engine type (e.g., pg, mysql)"
  type        = string
}

variable "engine_version" {
  description = "Database engine version"
  type        = string
}

variable "region" {
  description = "Region where the cluster will be created"
  type        = string
}

variable "size" {
  description = "Size of the database nodes (e.g., db-s-1vcpu-1gb)"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the database cluster"
  type        = number
}

variable "tags" {
  description = "Tags for the database cluster"
  type        = list(string)
}

variable "maintenance_window_day" {
  description = "Day of the week for maintenance window (0-6, 0=Sunday)"
  type        = number
}

variable "maintenance_window_hour" {
  description = "Hour of the day for maintenance window (0-23)"
  type        = number
}

