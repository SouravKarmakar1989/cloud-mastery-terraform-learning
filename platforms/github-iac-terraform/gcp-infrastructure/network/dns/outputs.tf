output "zone_id" {
  value = google_dns_managed_zone.zone.id
}

output "name_servers" {
  description = "Name servers to delegate the domain to (public zones only)."
  value       = google_dns_managed_zone.zone.name_servers
}
