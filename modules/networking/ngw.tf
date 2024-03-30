# Creating NAT Gateway
resource "aws_nat_gateway" "nat" {
  subnet_id     = element(aws_subnet.public_subnet.*.id, 0)
  allocation_id = aws_eip.nat_eip.id

  tags = {
    Name = var.nat_gateway
  }
}
