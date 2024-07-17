terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

resource "digitalocean_loadbalancer" "example_lb" {
  name   = var.name
  region = var.region

  forwarding_rule {
    entry_protocol  = var.forwarding_rule_entry_protocol
    entry_port      = var.forwarding_rule_entry_port
    target_protocol = var.forwarding_rule_target_protocol
    target_port     = var.forwarding_rule_target_port

    certificate_name = var.certificate_name
  }

  healthcheck {
    protocol                 = var.healthcheck_protocol
    port                     = var.healthcheck_port
    path                     = var.healthcheck_path
    check_interval_seconds   = var.healthcheck_check_interval_seconds
    response_timeout_seconds = var.healthcheck_response_timeout_seconds
    unhealthy_threshold      = var.healthcheck_unhealthy_threshold
    healthy_threshold        = var.healthcheck_healthy_threshold
  }

  droplet_ids = var.droplet_ids

}

