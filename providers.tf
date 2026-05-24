terraform {

  cloud {
    organization = "Terraform_Labs_MD"

    workspaces {
      name = "dev"
    }

  }
  required_version = ">= 1.0"

  #   backend "s3" {
  #     bucket       = "mybucket-terraform12354"
  #     key          = "Lab/lab.tfstate"
  #     region       = "us-east-1"
  #     use_lockfile = true
  #   }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  # count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "terraform-instance"
  }
}
