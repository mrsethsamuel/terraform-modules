resource "google_artifact_registry_repository" "artifact_registry" {
  location      = var.location
  repository_id = var.repository_id
  description   = var.description
  format        = "DOCKER"
  labels        = var.labels
}
