variable "registry_name" {
  description = "A name for the container registry"
  type        = string
}

variable "subscription_tier_slug" {
  description = "The slug identifier for the subscription tier (e.g., 'starter', 'basic', 'professional')"
  type        = string
  default     = "starter"
}
