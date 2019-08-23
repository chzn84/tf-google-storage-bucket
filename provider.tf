provider "google" {
  version = "~> 2.13"
  project = var.project_id
  region = var.location
}