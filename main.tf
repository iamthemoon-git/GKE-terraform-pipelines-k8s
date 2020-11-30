terraform {
  backend "remote" {
    organization = "Closed-Circuit"

    workspaces {
      name = "GKE-terraform-pipelines-k8s"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
}
