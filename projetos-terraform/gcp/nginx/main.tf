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
  credentials = ""
  region      = "southamerica-east1"
}

# Cria a VM com o Google Compute Engine
resource "google_compute_instance" "example_instance" {
  name         = "nginx-instance-gcp"
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
#   metadata_startup_script = "sudo apt-get update; sudo apt-get install apache2 -y; cp index.html /var/www/html/index.html"
  
  metadata_startup_script = <<-EOF
    #!/bin/bash
    apt-get update
    apt-get install -y nginx
    service nginx start
    cp index.html /var/www/html/index.html

  EOF

  tags = ["http-server"]
  
}
