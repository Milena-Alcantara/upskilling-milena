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
  region  = var.aws_region
}

resource "aws_instance" "ec2-example" {
  ami           = var.instance_ami_id
  instance_type = var.instance_type

  tags = {
    Name        = var.instance_name
    description = var.instance_description
  }
}

output "instance_id" {
  value = aws_instance.ec2-example.id
}
