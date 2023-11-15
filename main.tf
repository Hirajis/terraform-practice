terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.25.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = ami-0a6ed6689998f32a5
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}