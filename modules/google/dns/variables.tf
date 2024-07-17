variable "zone_name" {
  description = "The name of the DNS zone"
  type        = string
}

variable "dns_name" {
  description = "The DNS name of the zone"
  type        = string
}

variable "description" {
  description = "A description of the DNS zone"
  type        = string
  default     = ""
}

variable "labels" {
  description = "A map of labels to assign to the DNS zone"
  type        = map(string)
  default     = {}
}

variable "dns_records" {
  description = "A map of DNS records to create"
  type = map(object({
    name    = string
    type    = string
    ttl     = number
    rrdatas = list(string)
  }))
  default = {}
}
