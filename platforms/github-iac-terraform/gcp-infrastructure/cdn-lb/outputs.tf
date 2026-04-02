output "global_ip_address" {
  description = "Public anycast IP of the load balancer."
  value       = google_compute_global_address.lb_ip.address
}

output "url_map_id" {
  description = "URL map ID. Add path matchers to route to additional backends."
  value       = google_compute_url_map.lb.id
}

output "cdn_backend_id" {
  description = "CDN backend bucket ID."
  value       = google_compute_backend_bucket.cdn_backend.id
}

output "origin_bucket_name" {
  description = "GCS origin bucket name for static assets."
  value       = google_storage_bucket.lb_origin.name
}
