terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 1.0.9"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0902b0be1c5a22a55"
  instance_type = "t2.micro"

  tags = {
    Name = "testInstance"
  }
}
