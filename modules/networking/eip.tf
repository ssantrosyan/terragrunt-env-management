# Creating Elastic IP for NATGW
resource "aws_eip" "nat_eip" {
  domain     = "vpc"
  depends_on = [aws_internet_gateway.ig]

  tags = {
    Name = var.nat_eip
  }
}
