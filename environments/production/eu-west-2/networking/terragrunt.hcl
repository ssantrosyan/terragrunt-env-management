terraform {
  source = "../../../../modules/networking"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  environment          = "production"
  vpc_name             = "vpc-production"
  vpc_cidr_block       = "10.10.0.0/16"
  public_subnets_cidr  = ["10.10.32.0/20", "10.10.0.0/20", "10.10.16.0/20"]
  private_subnets_cidr = ["10.10.64.0/20", "10.10.48.0/20", "10.10.80.0/20"]
  availability_zones   = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  internet_gateway     = "igw-production"
  nat_gateway          = "nat-gw-production"
  nat_eip              = "nat-ip-production"
  public_subnets_name  = ["production-priv-2a", "production-priv-2b", "production-priv-2c"]
  private_subnets_name = ["production-pub-2a", "production-pub-2b", "production-pub-2c"]
}