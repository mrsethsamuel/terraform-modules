variable "project_id" {
  description = "The ID of the Google Cloud project where service accounts will be created."
  type        = string
}

variable "prefix" {
  description = "Prefix for naming convention of the service accounts."
  type        = string
}

variable "names" {
  description = "List of names for the service accounts."
  type        = list(string)
}

variable "project_roles" {
  description = "List of project and roles to assign to each service account."
  type        = list(string)
}
