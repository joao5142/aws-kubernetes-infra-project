data "aws_subnets" "private" {
  filter {
    name = "tag:Name"
    values = [
      "aws-kubernetes-infra-project-private-subnet-us-east-1a",
      "aws-kubernetes-infra-project-private-subnet-us-east-1b"
    ]
  }
}