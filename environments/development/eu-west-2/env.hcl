locals {
  environment          = "development"
  vpc_cidr_block       = "10.10.0.0/16"
  public_subnets_cidr  = ["10.10.32.0/20", "10.10.0.0/20", "10.10.16.0/20"]
  private_subnets_cidr = ["10.10.64.0/20", "10.10.48.0/20", "10.10.80.0/20"]
}
