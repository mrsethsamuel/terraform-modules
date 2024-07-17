variable "records" {
  description = "List of DNS records to create"
  type        = list(object({
    type   = string
    name   = string
    value  = string
    ttl    = number
  }))
}
