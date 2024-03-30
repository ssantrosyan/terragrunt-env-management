terraform {
  source = "../../../modules/networking"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  environment          = "development"
  vpc_name             = "vpc-development"
  vpc_cidr_block       = "10.10.0.0/16"
  public_subnets_cidr  = ["10.10.32.0/20", "10.10.0.0/20", "10.10.16.0/20"]
  private_subnets_cidr = ["10.10.64.0/20", "10.10.48.0/20", "10.10.80.0/20"]
  availability_zones   = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  internet_gateway     = "igw-development"
  nat_gateway          = "nat-gw-development"
  nat_eip              = "nat-ip-development"
  private_subnets_name = ["development-priv-2a", "development-priv-2b", "development-priv-2c"]
  public_subnets_name  = ["development-pub-2a", "development-pub-2b", "development-pub-2c"]
}