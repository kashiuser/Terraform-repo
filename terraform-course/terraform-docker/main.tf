terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.21.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "wordpress" {
  name         = "wordpress:latest"
  keep_locally = false
}

resource "docker_container" "wordpress" {
  image = docker_image.wordpress.latest
  name  = "wordpress-tf"

  ports {
    internal = 80
    external = 80
  }
}

