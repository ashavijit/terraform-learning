terraform {                       # Terraform block
  required_providers{          # Required providers block
    docker = {                  # Provider block
      source = "kreuzwerker/docker" # Provider source
      version = "2.14.0"       # Provider version
    }
  }
}

provider "docker" {             # Provider block
  name = "nginx:latest"       # Provider name
  keep_locally = false        # Provider argument indicating whether to keep the image locally
}
  
resource "docker_container" "nginx" { # Resource block indicating the type of resource and its name
  name = "nginx"           # Resource argument indicating the name of the container
  image = "nginx:latest"          # Resource argument indicating the image to use
  ports {
    internal = 80
    external = 8080
  }
}
  




