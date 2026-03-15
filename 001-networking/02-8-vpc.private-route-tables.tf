resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.this.id

  tags = { Name = var.vpc.private_route_table_name }

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.this.id
  }
}

resource "aws_route_table_association" "private_route_table_association" {
  count = length(var.vpc.private_subnets)

  route_table_id = aws_route_table.private_route_table.id
  subnet_id      = aws_subnet.private[count.index].id
}
