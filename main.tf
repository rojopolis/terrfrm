terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "rojopolis"
    workspaces {
      name = "terrfrm"
    }
  }
  required_version = "0.12.20"
}

resource "aws_s3_bucket" "my-bucket" {}

output "greeting" {
  value = aws_s3_bucket.my-bucket.bucket
  }
