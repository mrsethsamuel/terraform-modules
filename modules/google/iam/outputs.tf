output "custom_role_id" {
  description = "ID of the created custom role"
  value       = google_project_iam_custom_role.custom_role[*].id
}

output "custom_role_title" {
  description = "Title of the created custom role"
  value       = google_project_iam_custom_role.custom_role[*].title
}

output "iam_bindings" {
  description = "IAM bindings applied"
  value       = google_project_iam_binding.iam_binding[*].id
}
