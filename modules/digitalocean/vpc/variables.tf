variable "vpc_name" {
  description = "A name for the VPC"
  type        = string
}

variable "vpc_region" {
  description = "The DigitalOcean region slug for the VPC's location"
  type        = string
}

variable "vpc_description" {
  description = "A description for the VPC (optional)"
  type        = string
  default     = ""
}

variable "vpc_ip_range" {
  description = "The range of IP addresses for the VPC in CIDR notation"
  type        = string
}
