terraform {
  source = "../../../../modules/networking"
}

include "root" {
  path = find_in_parent_folders()
}

include "env" {
  path = find_in_parent_folders("env.hcl")
  expose = true
  merge_strategy = "no_merge"
}

inputs = {
  environment          = include.env.locals.env
  vpc_name             = "vpc-${include.env.locals.env}"
  vpc_cidr_block       = "10.10.0.0/16"
  public_subnets_cidr  = ["10.10.32.0/20", "10.10.0.0/20", "10.10.16.0/20"]
  private_subnets_cidr = ["10.10.64.0/20", "10.10.48.0/20", "10.10.80.0/20"]
  availability_zones   = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  internet_gateway     = "igw-${include.env.locals.env}"
  nat_gateway          = "nat-gw-${include.env.locals.env}"
  nat_eip              = "nat-ip-${include.env.locals.env}"
  public_subnets_name  = ["${include.env.locals.env}-priv-2a", "${include.env.locals.env}-priv-2b", "${include.env.locals.env}-priv-2c"]
  private_subnets_name = ["${include.env.locals.env}-pub-2a", "${include.env.locals.env}-pub-2b", "${include.env.locals.env}-pub-2c"]
}