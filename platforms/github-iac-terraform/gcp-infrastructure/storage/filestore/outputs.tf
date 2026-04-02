output "filestore_id" {
  value = google_filestore_instance.nfs.id
}

output "ip_addresses" {
  description = "Private IP address of the Filestore NFS server."
  value       = google_filestore_instance.nfs.networks[0].ip_addresses
}

output "nfs_mount_path" {
  description = "Mount path for NFS clients: mount -t nfs <ip>:/<share_name>"
  value       = "/${var.file_share_name}"
}
