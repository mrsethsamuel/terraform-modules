variable "project_id" {
  description = "The project ID to host the cluster in"
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork to host the cluster in"
  type        = string
}

variable "network" {
  description = "The VPC network to host the cluster in"
  type        = string
}

variable "name" {
  description = "The name to assign to the resources."
  type        = string
}

variable "ip_range_services" {
  description = "The secondary ip range to use for services"
  type        = string
}

variable "ip_range_pods" {
  description = "The secondary ip range to use for pods"
  type        = string
}

variable "regional" {
  description = "Whether is a regional cluster"
  type        = string
  default     = "True"
}
variable "region" {
  description = "The region to host the cluster in"
  type        = string
  default     = "europe-west3"
}

variable "enable_binary_authorization" {
  description = "Enable BinAuthZ Admission controller"
  default     = false
}
