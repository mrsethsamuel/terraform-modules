
resource "google_project_iam_binding" "iam_binding" {
  for_each = var.iam_bindings

  project = var.project_id
  role    = each.value["role"]
  members = [each.value["member"]]
}
