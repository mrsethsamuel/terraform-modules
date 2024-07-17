variable "network_name" {
  description = "Name of the VPC network"
  type        = string
}

variable "auto_create_subnetworks" {
  description = "Auto-create subnetworks"
  type        = bool
  default     = false
}

variable "routing_mode" {
  description = "Routing mode for the VPC network"
  type        = string
  default     = "REGIONAL"
}

variable "project_id" {
  description = "The project ID to host the cluster in"
  type        = string
}
