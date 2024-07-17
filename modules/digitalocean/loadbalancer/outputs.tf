output "load_balancer_ip" {
  description = "IP address of the created load balancer"
  value       = digitalocean_loadbalancer.example_lb.ip
}

output "load_balancer_id" {
  description = "ID of the created load balancer"
  value       = digitalocean_loadbalancer.example_lb.id
}
