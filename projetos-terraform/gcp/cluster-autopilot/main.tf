terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 4.37.0"
    }
  }
}

provider "google" {
    project = var.project_id
}

resource "google_container_cluster" "primary" {
  name               = "kubernetes-cluster-001"
  location           = var.region
  initial_node_count = 1
  enable_autopilot = true
  ip_allocation_policy {
  }
}