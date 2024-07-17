variable "image_name" {
  description = "Name for the custom image"
  type        = string
}

variable "image_url" {
  description = "URL of the custom image"
  type        = string
}

variable "distribution" {
  description = "Distribution type of the custom image (e.g., 'Ubuntu', 'CentOS')"
  type        = string
}

variable "regions" {
  description = "A list of regions. Currently only one is supported."
  type        = list(string)
  default     = ["nyc3"]  # Replace with your desired default region(s)
}

