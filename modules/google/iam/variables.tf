variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "create_custom_role" {
  description = "Whether to create a custom role"
  type        = bool
  default     = false
}

variable "custom_role_id" {
  description = "ID of the custom role to create"
  type        = string
}

variable "custom_role_title" {
  description = "Title of the custom role to create"
  type        = string
}

variable "custom_role_permissions" {
  description = "List of permissions for the custom role"
  type        = list(string)
}

variable "iam_bindings" {
  description = "List of IAM bindings"
  type = map(object({
    role   = string
    member = string
  }))
}
