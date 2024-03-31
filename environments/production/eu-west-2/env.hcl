locals {
  environment          = "production"
  vpc_cidr_block       = "172.16.0.0/16"
  public_subnets_cidr  = ["172.16.20.0/24", "172.16.0.0/24", "172.16.24.0/24"]
  private_subnets_cidr = ["172.16.104.0/21", "172.16.144.0/21", "172.16.184.0/21"]
}
