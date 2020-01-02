provider "docker" {
}
resource "docker_image" "client" {
  name         = "client"
  keep_locally = true
}

resource "docker_image" "server" {
  name         = "server"
  keep_locally = true
}

resource "docker_container" "client_instance" {
  image   = "${docker_image.client.latest}"
  name    = "client"
  restart = "always"
  ports {
    internal = 80
    external = 80
  }
}

resource "docker_container" "server_instance" {
  image   = "${docker_image.server.latest}"
  name    = "server"
  restart = "always"
  ports {
    internal = 3000
    external = 3000
  }
}

