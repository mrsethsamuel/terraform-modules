variable "firewall_name" {
  description = "Name of the DigitalOcean firewall"
  type        = string
}

variable "inbound_protocol" {
  description = "Protocol for inbound rule (e.g., tcp, udp)"
  type        = string
}

variable "inbound_port_range" {
  description = "Port range for inbound rule (e.g., 80, 8080-8090)"
  type        = string
}

variable "inbound_source_addresses" {
  description = "Source IP addresses for inbound rule (e.g., ['192.168.1.1/32', '192.168.2.0/24'])"
  type        = list(string)
}

variable "outbound_protocol" {
  description = "Protocol for outbound rule (e.g., tcp, udp)"
  type        = string
}

variable "outbound_port_range" {
  description = "Port range for outbound rule (e.g., 80, 8080-8090)"
  type        = string
}

variable "outbound_destination_addresses" {
  description = "Destination IP addresses for outbound rule (e.g., ['192.168.1.1/32', '192.168.2.0/24'])"
  type        = list(string)
}
