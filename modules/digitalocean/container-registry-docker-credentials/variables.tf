variable "credentials_expiry_seconds" {
  description = "The number of seconds until the Docker credentials expire"
  type        = number
  default     = 3600
}

variable "registry_name" {
  description = "A name for the container registry"
  type        = string
}