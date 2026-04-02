output "bucket_name" { value = google_storage_bucket.static.name }
output "website_url" { value = "https://storage.googleapis.com//index.html" }