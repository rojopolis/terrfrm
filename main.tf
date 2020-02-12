terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "rojopolis"
    workspaces {
      name = "k8s"
    }
  }
  required_version = "0.12.20"
}
output "greeting" {
  value = "Hello world"
  }
