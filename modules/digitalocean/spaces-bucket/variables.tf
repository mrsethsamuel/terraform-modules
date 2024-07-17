variable "bucket_name" {
  description = "Name of the DigitalOcean Spaces bucket"
  type        = string
}

variable "bucket_region" {
  description = "Region where the bucket will be created"
  type        = string
}

variable "bucket_acl" {
  description = "Access control list for the bucket (private, public-read, or public-read-write)"
  type        = string
}

variable "bucket_versioning_enabled" {
  description = "Whether object versioning is enabled for the bucket"
  type        = bool
}

variable "lifecycle_rule_id" {
  description = "ID for the lifecycle rule"
  type        = string
}

variable "lifecycle_rule_enabled" {
  description = "Whether the lifecycle rule is enabled"
  type        = bool
}

variable "lifecycle_rule_prefix" {
  description = "Prefix for objects affected by the lifecycle rule"
  type        = string
}

variable "lifecycle_rule_expiration_days" {
  description = "Number of days after which objects matching the lifecycle rule prefix will expire"
  type        = number
}
