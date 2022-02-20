terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  #credentials = file("<NAME>.json")

  project = "gcptrainingproject-340019"
  region  = "northamerica-northeast2"
  zone    = "northamerica-northeast2-a"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
#sdfs