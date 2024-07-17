variable "cluster_id" {
  description = "The ID of the target database cluster."
  type        = string
}

variable "firewall_rules" {
  description = "List of firewall rules specifying resources allowed to access the database cluster."
  type = list(object({
    type  = string
    value = string
  }))
}
