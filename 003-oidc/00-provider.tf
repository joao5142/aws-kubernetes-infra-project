terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket         = "remote-backend-bucket-joaop"
    key            = "oidc/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dynamodb-state-locking-table"
  }
}

provider "aws" {
  region = var.assume_role.region

  default_tags {
    tags = var.tags
  }

  assume_role {
    role_arn = var.assume_role.arn
  }
}
