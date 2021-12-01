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
      name = "hashiconf-global-cluster"
    }
  }
    required_version = "~> 1.0.8"

}
