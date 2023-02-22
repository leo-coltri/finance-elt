resource "google_storage_bucket" "gcs_bucket" {
  name = "test-bucket_finance-1b2610991703"
  location = var.region
}