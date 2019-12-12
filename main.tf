terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "rojopolis"
    workspaces {
      name = "k8s"
    }
  }
}

//--------------------------------------------------------------------
// Modules
module "k8s_cluster" {
  source  = "app.terraform.io/rojopolis/k8s-cluster/aws"
  version = "0.1.0"
  kubernetes_version = "1.14"
  name = "test-cluster"
  private_subnets = ["10.10.2.0/24"]
  public_subnets = ["10.10.1.0/24"]
  vpc_cidr = "10.11.0.0/16"
}