terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 5.15.0"
    }
  }
}

# Credenciais
provider "google" {
  project     = "devops-rfahham-413414"
  credentials = file("")
  region      = "southamerica-east1"
}

# Cria a VM com o Google Compute Engine
resource "google_compute_instance" "example_instance" {
  name         = "webserver-gcp"
  machine_type = "e2-standard-2"
  zone         = "southamerica-east1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
    access_config {

    }
  }

  # Instala o servidor web Apache
  metadata_startup_script = "sudo apt-get update; sudo apt-get install apache2 -y; cp index.html /var/www/html/index.html"
  
#   metadata_startup_script = <<-EOF
#     #!/bin/bash
#     sudo apt-get update
#     sudo apt-get install -y apache2
#     sudo service apache2 start
#   EOF

  tags = ["http-server"]
  
}
