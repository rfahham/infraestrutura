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
    credentials = ".json"
    region = var.region
}

# Cria a VM com o Google Compute Engine
resource "google_compute_instance" "webserver" {
  name          = var.name
  machine_type  = var.type
  zone          = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  # Instala o servidor web Apache
  metadata_startup_script = "sudo apt-get update; sudo apt-get install apache2 -y; echo Testando > /var/www/html/index.html"

  # Habilita rede para a VM bem como um IP público
  network_interface {
    network = "default"
    access_config {

    }
  }
}

# Cria o Firewall para a VM
resource "google_compute_firewall" "webfirewall" {
  name        = var.nome_fw
  network     = "default"

  allow {
    protocol  = "tcp"
    ports     = var.portas
  }
}
