resource "google_project_service" "project" {
  project = "your-project-id"
  service = "iam.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  version = "3.5.0"

credentials = file(var.credentials_file)
project = var.project
region  = var.region
zone    = var.zone

}
