variable "instance_template_name" {
  description = "The name of the instance template"
  type        = string
}

variable "machine_type" {
  description = "The machine type to use for instances"
  type        = string
}

variable "boot_image" {
  description = "The image to use for the boot disk"
  type        = string
}

variable "boot_disk_size" {
  description = "The size of the boot disk in GB"
  type        = number
  default     = 10
}

variable "boot_disk_type" {
  description = "The type of the boot disk (e.g., pd-standard, pd-ssd)"
  type        = string
  default     = "pd-standard"
}

variable "network" {
  description = "The network to attach the instances to"
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork to attach the instances to"
  type        = string
}

variable "metadata" {
  description = "Metadata to attach to the instances"
  type        = map(string)
  default     = {}
}

variable "service_account_email" {
  description = "The service account email to attach to the instances"
  type        = string
}

variable "service_account_scopes" {
  description = "The scopes to attach to the service account"
  type        = list(string)
}

variable "tags" {
  description = "Network tags to attach to the instances"
  type        = list(string)
  default     = []
}

variable "labels" {
  description = "Labels to attach to the instances"
  type        = map(string)
  default     = {}
}

variable "instance_group_name" {
  description = "The name of the instance group"
  type        = string
}

variable "instance_group_base_name" {
  description = "The base name for instances in the group"
  type        = string
}

variable "zone" {
  description = "The zone to deploy resources in"
  type        = string
}

variable "target_size" {
  description = "The target size of the instance group"
  type        = number
  default     = 1
}

variable "named_port_name" {
  description = "The name of the named port"
  type        = string
  default     = "http"
}

variable "named_port_port" {
  description = "The port number of the named port"
  type        = number
  default     = 80
}

variable "autoscaler_name" {
  description = "The name of the autoscaler"
  type        = string
}

variable "autoscaler_max_replicas" {
  description = "The maximum number of replicas for the autoscaler"
  type        = number
}

variable "autoscaler_min_replicas" {
  description = "The minimum number of replicas for the autoscaler"
  type        = number
}

variable "autoscaler_cooldown_period" {
  description = "The cooldown period for the autoscaler"
  type        = number
  default     = 60
}

variable "autoscaler_cpu_target" {
  description = "The target CPU utilization for the autoscaler"
  type        = number
  default     = 0.6
}
