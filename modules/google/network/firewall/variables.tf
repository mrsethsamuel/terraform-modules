variable "project_id" {
  description = "The ID of the Google Cloud project."
  type        = string
}

variable "network_name" {
  description = "Name of the network this set of firewall rules applies to."
  type        = string
}

variable "firewall_rules" {
  description = "List of firewall rules definitions."
  type = list(object({
    name                    = string
    description             = optional(string)
    priority                = optional(number, 1000)
    direction               = string
    destination_ranges      = optional(list(string))
    source_ranges           = optional(list(string))
    source_tags             = optional(list(string))
    source_service_accounts = optional(list(string))
    target_tags             = optional(list(string))
    target_service_accounts = optional(list(string))
    allow = optional(list(object({
      protocol = string
      ports    = optional(list(string))
    })))
    deny = optional(list(object({
      protocol = string
      ports    = optional(list(string))
    })))
    log_config = optional(object({
      metadata = optional(string, "INCLUDE_ALL_METADATA")
    }))
  }))
  default = []
}
