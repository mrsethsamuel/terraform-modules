output "zone_name" {
  description = "The name of the DNS zone"
  value       = google_dns_managed_zone.dns_zone.name
}

output "zone_dns_name" {
  description = "The DNS name of the zone"
  value       = google_dns_managed_zone.dns_zone.dns_name
}

output "zone_name_servers" {
  description = "The name servers of the DNS zone"
  value       = google_dns_managed_zone.dns_zone.name_servers
}
