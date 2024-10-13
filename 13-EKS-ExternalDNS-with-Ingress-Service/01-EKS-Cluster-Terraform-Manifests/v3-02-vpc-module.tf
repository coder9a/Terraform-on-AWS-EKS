# Create VPC Terraform Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.4.0"

  # VPC Basic Details
  name            = "${local.name}-${var.vpc_name}"
  cidr            = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets

  # Database Subnets
  database_subnets                   = var.vpc_database_subnets
  create_database_subnet_group       = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
  # create_database_internet_gateway_route = true
  # create_database_nat_gateway_route = true

  # NAT Gateways - Outbound Communication
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway

  # VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags     = local.common_tags
  vpc_tags = local.common_tags

  # Additional Tags to Subnets
  public_subnet_tags = {
    Type = "Public-Subnets"
    "kubernetes.io/cluster/${local.name}-${var.cluster_name}" = "shared"
    "kubernetes.io/role/elb" = "1"
  }
  private_subnet_tags = {
    Type = "Private-Subnets"
    "kubernetes.io/cluster/${local.name}-${var.cluster_name}" = "shared"
    "kubernetes.io/role/elb" = "1"
  }
  database_subnet_tags = {
    Type = "Private-Database-Subnets"
  }
  # Instances launched into the Public subnet should be assigned a public IP address.
  map_public_ip_on_launch = true
}


# terraform init -backend-config="access_key=AKIAWCBIPYVG4QADOK22" -backend-config="secret_key=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"