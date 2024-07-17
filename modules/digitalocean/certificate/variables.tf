variable "certificate_name" {
  description = "A name for the certificate"
  type        = string
}

variable "certificate_type" {
  description = "The type of certificate (either 'lets_encrypt' or 'custom')"
  type        = string
  default     = "custom"
}

variable "private_key" {
  description = "The private key for the certificate"
  type        = string
  sensitive   = true
  default     = null
}

variable "leaf_certificate" {
  description = "The main certificate"
  type        = string
  sensitive   = true
  default     = null
}

variable "certificate_chain" {
  description = "The certificate chain"
  type        = string
  sensitive   = true
  default     = null
}