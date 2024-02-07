terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.35.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0e731c8a588258d0d"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}