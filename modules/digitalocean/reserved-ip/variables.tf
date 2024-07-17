variable "droplet_id" {
  description = "ID of the Droplet to assign the Floating IP to"
  type        = string
}

variable "region" {
  description = "Region where the Floating IP is reserved"
  type        = string
}
