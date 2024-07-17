output "instance_template_name" {
  description = "The name of the instance template"
  value       = google_compute_instance_template.instance_template.name
}

output "instance_group_manager_name" {
  description = "The name of the instance group manager"
  value       = google_compute_instance_group_manager.instance_group_manager.name
}

output "instance_group_manager_self_link" {
  description = "The self-link of the instance group manager"
  value       = google_compute_instance_group_manager.instance_group_manager.self_link
}

output "instance_group_autoscaler_name" {
  description = "The name of the instance group autoscaler"
  value       = google_compute_autoscaler.instance_group_autoscaler.name
}
