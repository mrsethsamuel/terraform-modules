output "vm_instance_name" {
  description = "The name of the VM instance"
  value       = google_compute_instance.vm_instance.name
}

output "vm_instance_self_link" {
  description = "The self-link of the VM instance"
  value       = google_compute_instance.vm_instance.self_link
}

output "vm_instance_network_ip" {
  description = "The internal IP address of the VM instance"
  value       = google_compute_instance.vm_instance.network_interface[0].network_ip
}

output "vm_instance_external_ip" {
  description = "The external IP address of the VM instance"
  value       = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}