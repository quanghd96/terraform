# Configure the Docker provider
provider "docker" {
}

# Create a container
resource "docker_container" "nginx" {
  image   = "nginx:latest"
  name    = "nginx"
  restart = "always"
  ports {
    internal = 80
    external = 80
  }
  ports {
    internal = 81
    external = 81
  }
}

resource "docker_container" "mysql" {
  image   = "mysql:latest"
  name    = "mysql"
  restart = "always"
  ports {
    internal = 3306
    external = 3306
  }
}

resource "docker_container" "mongodb" {
  image   = "mongo:latest"
  name    = "mongodb"
  restart = "always"
  ports {
    internal = 27017
    external = 27017
  }
}
