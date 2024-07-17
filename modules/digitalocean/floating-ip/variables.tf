variable "region" {
  description = "Region where the floating IP will be allocated"
  type        = string
}

variable "droplet_id" {
  description = "ID of the Droplet to which the floating IP will be assigned"
  type        = string
}
