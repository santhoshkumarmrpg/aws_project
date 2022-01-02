terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 1.0.9"
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
  access_key = "AKIAZPROUA3NJ5GN7WNR"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0902b0be1c5a22a55"
  instance_type = "t2.micro"

  tags = {
    Name = "testInstance"
  }
}
