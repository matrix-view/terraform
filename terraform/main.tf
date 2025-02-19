terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0e2c84960ebe32aab"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}