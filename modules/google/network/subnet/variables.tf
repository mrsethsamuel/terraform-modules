variable "network_id" {
  description = "ID of the VPC network"
  type        = string
}

variable "subnets" {
  description = "List of subnets to create"
  type = list(object({
    name                     = string
    cidr                     = string
    region                   = string
    private_ip_google_access = bool
    secondary_ip_ranges = list(object({
      name = string
      cidr = string
    }))
  }))
}
