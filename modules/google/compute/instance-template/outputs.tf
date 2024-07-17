output "instance_template_name" {
  description = "The name of the instance template"
  value       = google_compute_instance_template.instance_template.name
}

output "instance_template_self_link" {
  description = "The self-link of the instance template"
  value       = google_compute_instance_template.instance_template.self_link
}
