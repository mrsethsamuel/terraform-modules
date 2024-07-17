variable "origin" {
  description = "The origin of the CDN, usually the URL of a DigitalOcean Space"
  type        = string
}

variable "custom_domain" {
  description = "A custom domain to serve the CDN from"
  type        = string
  default     = ""
}

variable "ttl" {
  description = "The time to live (TTL) for cached content in seconds"
  type        = number
  default     = 3600
}

variable "certificate_name" {
  description = "A name for the certificate"
  type        = string
}