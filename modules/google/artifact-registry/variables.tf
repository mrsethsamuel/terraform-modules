variable "location" {
  description = "The location of the repository (e.g., us-central1)"
  type        = string
}

variable "description" {
  description = "Description of the repository"
  type        = string
}

variable "labels" {
  description = "A map of labels to assign to the repository"
  type        = map(string)
  default     = {}
}

variable "repository_id" {
  description = "The last part of the repository name, eg. YouverifyHQ"
  type        = string
}
