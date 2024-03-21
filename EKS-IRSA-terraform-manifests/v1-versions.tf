# Terraform Settings Block
terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = ">= 4.65"
      version = ">= 5.31"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket         = "terraform-eks-s3-bucket"
    key            = "dev/eks-irsa-demo/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "eks-dynamodb-lock-table"
  }
}
