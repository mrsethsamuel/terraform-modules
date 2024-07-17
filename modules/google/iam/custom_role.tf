resource "google_project_iam_custom_role" "custom_role" {
  count       = var.create_custom_role ? 1 : 0
  role_id     = var.custom_role_id
  title       = var.custom_role_title
  permissions = var.custom_role_permissions
}
