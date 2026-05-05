terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  # Add your AWS credentials configuration here
  # For example:
   access_key = var.aws_access_key
   secret_key = var.aws_secret_key
  
}

module "vpc" {
  source = "../Module/VPC"

  project_name        = var.project_name
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}