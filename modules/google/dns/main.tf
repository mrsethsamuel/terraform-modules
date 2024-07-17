resource "google_dns_managed_zone" "dns_zone" {
  name        = var.zone_name
  dns_name    = var.dns_name
  description = var.description

  labels = var.labels
}

resource "google_dns_record_set" "dns_records" {
  for_each = var.dns_records

  name         = each.value["name"]
  managed_zone = google_dns_managed_zone.dns_zone.name
  type         = each.value["type"]
  ttl          = each.value["ttl"]
  rrdatas      = each.value["rrdatas"]
}
