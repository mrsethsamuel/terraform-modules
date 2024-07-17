output "subnet_ids" {
  description = "IDs of the subnets"
  value       = google_compute_subnetwork.subnet[*].id
}
