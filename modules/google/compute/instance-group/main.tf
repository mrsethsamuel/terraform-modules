resource "google_compute_instance_template" "instance_template" {
  name         = var.instance_template_name
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

resource "google_compute_instance_group_manager" "instance_group_manager" {
  name               = var.instance_group_name
  base_instance_name = var.instance_group_base_name
  zone               = var.zone
  version {
    instance_template = google_compute_instance_template.instance_template.self_link
  }
  target_size = var.target_size
  named_port {
    name = var.named_port_name
    port = var.named_port_port
  }
}

resource "google_compute_autoscaler" "instance_group_autoscaler" {
  name   = var.autoscaler_name
  zone   = var.zone
  target = google_compute_instance_group_manager.instance_group_manager.self_link
  autoscaling_policy {
    max_replicas    = var.autoscaler_max_replicas
    min_replicas    = var.autoscaler_min_replicas
    cooldown_period = var.autoscaler_cooldown_period
    cpu_utilization {
      target = var.autoscaler_cpu_target
    }
  }
}
