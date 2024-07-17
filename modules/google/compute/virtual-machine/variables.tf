variable "name" {
  description = "The name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "The machine type to use for the VM instance"
  type        = string
}

variable "zone" {
  description = "The zone to deploy the VM instance in"
  type        = string
}

variable "boot_image" {
  description = "The image to use for the boot disk"
  type        = string
  default = "debian-cloud/debian-11"
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
  description = "The network to attach the VM to"
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork to attach the VM to"
  type        = string
}

variable "metadata" {
  description = "Metadata to attach to the VM"
  type        = map(string)
  default     = {}
}

variable "service_account_email" {
  description = "The service account email to attach to the VM"
  type        = string
}

variable "service_account_scopes" {
  description = "The scopes to attach to the service account"
  type        = list(string)
}

variable "tags" {
  description = "Network tags to attach to the VM"
  type        = list(string)
  default     = []
}

variable "labels" {
  description = "Labels to attach to the VM"
  type        = map(string)
  default     = {}
}
