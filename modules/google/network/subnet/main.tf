resource "google_compute_subnetwork" "subnet" {
  count = length(var.subnets)

  name                     = var.subnets[count.index].name
  ip_cidr_range            = var.subnets[count.index].cidr
  region                   = var.subnets[count.index].region
  network                  = var.network_id
  private_ip_google_access = var.subnets[count.index].private_ip_google_access

  dynamic "secondary_ip_range" {
    for_each = var.subnets[count.index].secondary_ip_ranges
    content {
      range_name    = secondary_ip_range.value.name
      ip_cidr_range = secondary_ip_range.value.cidr
    }
  }
}
