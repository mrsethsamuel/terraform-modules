resource "google_compute_instance_template" "instance_template" {
  name         = var.name
  machine_type = var.machine_type

  disk {
    source_image = var.boot_image
    disk_size_gb = var.boot_disk_size
    disk_type    = var.boot_disk_type
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork

    access_config {
      // Ephemeral IP
    }
  }

  metadata = var.metadata

  service_account {
    email  = var.service_account_email
    scopes = var.service_account_scopes
  }

  tags = var.tags

  labels = var.labels
}
