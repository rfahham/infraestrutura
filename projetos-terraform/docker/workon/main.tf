terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "workon" {
  name         = "rfahham/workon:2.0.0"
  keep_locally = false
}

resource "docker_container" "workon" {
  image = docker_image.workon.image_id
  name  = "tutorial"

  ports {
    internal = 80
    external = 8000
  }
}
