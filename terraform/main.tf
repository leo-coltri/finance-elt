terraform {
  backend "gcs" {
      bucket  = "finance-tf-state"
      prefix  = "terraform/state"
  }

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  
}

resource "google_storage_bucket" "gcs_bucket" {
  name = "test-bucket_finance-1c2610991703"
  location = var.region
}