terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.52"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"

    organization = "tyreepearson"

    workspaces {
      name = "learn-sentinel-tfc"
    }
  }
}