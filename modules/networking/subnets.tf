# Creating public subnets
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc.id
  count                   = length(var.public_subnets_cidr)
  cidr_block              = element(var.public_subnets_cidr[terraform.workspace], count.index)
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = true

  tags = {
    Name = "${element(var.public_subnets_name, count.index)}"
  }
}

# Creating private subnets
resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.vpc.id
  count             = length(var.private_subnets_cidr)
  cidr_block        = element(var.private_subnets_cidr[terraform.workspace], count.index)
  availability_zone = element(var.availability_zones, count.index)

  tags = {
    Name = "${element(var.private_subnets_name, count.index)}"
  }
}
