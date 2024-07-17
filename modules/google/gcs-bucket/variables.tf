variable "name" {
  description = "The name of the bucket"
  type        = string
}

variable "location" {
  description = "The location of the bucket"
  type        = string
}

variable "storage_class" {
  description = "The storage class of the bucket"
  type        = string
  default     = "STANDARD"
}
