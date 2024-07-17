variable "name" {
  description = "The Load Balancer name."
  type        = string
}

variable "region" {
  description = "The region to start the Load Balancer in."
  type        = string
}

variable "forwarding_rule_entry_protocol" {
  description = "The protocol used for traffic to the Load Balancer."
  type        = string
  default     = "http"
}

variable "forwarding_rule_entry_port" {
  description = "The port on which the Load Balancer instance will listen."
  type        = number
  default     = 80
}

variable "forwarding_rule_target_protocol" {
  description = "The protocol used for traffic from the Load Balancer to the backend Droplets."
  type        = string
  default     = "http"
}

variable "forwarding_rule_target_port" {
  description = "The port on the backend Droplets to which the Load Balancer will send traffic."
  type        = number
  default     = 80
}

variable "certificate_name" {
  description = "The unique name of the TLS certificate to be used for SSL termination."
  type        = string
  default     = ""
}

variable "healthcheck_protocol" {
  description = "The protocol used for health checks sent to the backend Droplets."
  type        = string
  default     = "tcp"
}

variable "healthcheck_port" {
  description = "The port on the backend Droplets on which the health check will attempt a connection."
  type        = number
  default     = 22
}

variable "healthcheck_path" {
  description = "The path on the backend Droplets to which the Load Balancer instance will send a request."
  type        = string
  default     = "/"
}

variable "healthcheck_check_interval_seconds" {
  description = "The number of seconds between two consecutive health checks."
  type        = number
  default     = 10
}

variable "healthcheck_response_timeout_seconds" {
  description = "The number of seconds the Load Balancer instance will wait for a response until marking a health check as failed."
  type        = number
  default     = 5
}

variable "healthcheck_unhealthy_threshold" {
  description = "The number of times a health check must fail for a backend Droplet to be marked 'unhealthy' and be removed from the pool."
  type        = number
  default     = 3
}

variable "healthcheck_healthy_threshold" {
  description = "The number of times a health check must pass for a backend Droplet to be marked 'healthy' and be re-added to the pool."
  type        = number
  default     = 5
}

variable "droplet_ids" {
  description = "A list of the IDs of each droplet to be attached to the Load Balancer."
  type        = list(string)
  default     = []
}
