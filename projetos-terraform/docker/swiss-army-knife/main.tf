terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "swiss-army-knife" {
  name         = "rfahham/swiss-army-knife:v1.6.0"
  keep_locally = false
}

resource "docker_container" "swiss-army-knife" {
  image = docker_image.swiss-army-knife.image_id
  name  = "tutorial"

  ports {
    internal = 80
    external = 8000
  }
}
