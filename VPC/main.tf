terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-eks-s3-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "eks-dynamodb-lock-table"
  }
}

provider "aws" {
  region     = var.aws_region
  access_key = "AKIAWCBIPYVG4QADOK22"
  secret_key = "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"
}
