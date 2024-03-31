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
  environment          = include.env.locals.environment
  vpc_name             = "vpc-${include.env.locals.environment}"
  vpc_cidr_block       = include.env.locals.vpc_cidr_block
  public_subnets_cidr  = include.env.locals.public_subnets_cidr
  private_subnets_cidr = include.env.locals.private_subnets_cidr
  availability_zones   = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  internet_gateway     = "igw-${include.env.locals.environment}"
  nat_gateway          = "nat-gw-${include.env.locals.environment}"
  nat_eip              = "nat-ip-${include.env.locals.environment}"
  public_subnets_name  = ["${include.env.locals.environment}-priv-2a", "${include.env.locals.environment}-priv-2b", "${include.env.locals.environment}-priv-2c"]
  private_subnets_name = ["${include.env.locals.environment}-pub-2a", "${include.env.locals.environment}-pub-2b", "${include.env.locals.environment}-pub-2c"]
}