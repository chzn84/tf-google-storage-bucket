resource "google_kms_key_ring" "customer_keyring" {
  name     = var.default_kms_keyring_name
  location = var.location
  project = var.project_id
}

resource "google_kms_crypto_key" "customer_key" {
  name = var.default_kms_key_name
  key_ring = google_kms_key_ring.customer_keyring.self_link
  purpose  = "ENCRYPT_DECRYPT"
}

resource "google_storage_bucket" "bucket" {
  name = var.bucket_name
  project = var.project_id
  location = var.location
  encryption {
    default_kms_key_name = google_kms_crypto_key.customer_key.self_link
  }
  versioning {
    enabled = true
  }
  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 91
      with_state = "LIVE"
    }
  }
}
