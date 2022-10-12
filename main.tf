terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  version = "3.5.0"

  credentials = file("key.json")
  project     = var.project
  region      = var.region
  zone        = var.zone

}
