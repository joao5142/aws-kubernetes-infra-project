resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.this.id

  tags = { Name = var.vpc.public_route_table_name }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this.id
  }
}

resource "aws_route_table_association" "public_route_table_association" {
  count = length(var.vpc.public_subnets)

  route_table_id = aws_route_table.public_route_table.id
  subnet_id      = aws_subnet.public[count.index].id
}