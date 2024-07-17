variable "cluster_id" {
  description = "The ID of the source PostgreSQL database cluster."
  type        = string
}

variable "name" {
  description = "The name for the database connection pool."
  type        = string
}

variable "mode" {
  description = "The PGBouncer transaction mode for the connection pool."
  type        = string
}

variable "size" {
  description = "The desired size of the PGBouncer connection pool."
  type        = number
}

variable "db_name" {
  description = "The database for use with the connection pool."
  type        = string
}
