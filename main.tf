terraform {

  backend "remote" {
    organization = "VTEXProject"
    workspaces {
      name = 
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0490fddec0cbeb88b"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
