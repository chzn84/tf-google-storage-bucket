output "customer_key" {
  value = google_kms_crypto_key.customer_key.self_link
}

output "bucket_url" {
  value = google_storage_bucket.bucket.self_link
}
