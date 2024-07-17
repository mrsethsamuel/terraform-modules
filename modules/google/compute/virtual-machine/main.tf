resource "google_compute_instance" "vm_instance" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.boot_image
      size  = var.boot_disk_size
      type  = var.boot_disk_type
    }
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
