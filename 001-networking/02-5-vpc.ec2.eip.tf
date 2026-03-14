resource "aws_eip" "nat_gateway_eip" {
  domain = "vpc"

  tags = {
    Name = "aws-kubernetes-infra-project-nat-gateway-eip"
  }
}