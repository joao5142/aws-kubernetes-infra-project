variable "tags" {
  type = map(string)
  default = {
    Environment = "develop"
    Project     = "aws-kubernetes-infra-project"
  }
}

variable "assume_role" {
  type = object({
    arn    = string
    region = string
  })
}

variable "vpc" {
  type = object({
    name                    = string
    cidr_block              = string
    internet_gateway_name   = string
    public_route_table_name = string
    private_route_table_name = string
    nat_gateway_name         = string
    public_subnets = list(object({
      name                    = string
      availability_zone       = string
      map_public_ip_on_launch = bool
      cidr_block              = string
    }))
    private_subnets = list(object({
      name              = string
      availability_zone = string
      cidr_block        = string
    }))
  })
  default = {
    name                     = "aws-kubernetes-infra-project-vpc"
    cidr_block               = "10.0.0.0/24"
    internet_gateway_name    = "aws-kubernetes-infra-project-internet-gateway"
    public_route_table_name  = "aws-kubernetes-infra-project-public-route-table"
    private_route_table_name = "aws-kubernetes-infra-project-private-route-table"
    nat_gateway_name         = "aws-kubernetes-infra-project-nat-gateway"
    public_subnets = [
      {
        name                    = "aws-kubernetes-infra-project-public-subnet-us-east-1a"
        availability_zone       = "us-east-1a"
        map_public_ip_on_launch = true
        cidr_block              = "10.0.0.0/26"
      },
      {
        name                    = "aws-kubernetes-infra-project-public-subnet-us-east-1b"
        availability_zone       = "us-east-1b"
        map_public_ip_on_launch = true
        cidr_block              = "10.0.0.64/26"
      }
    ]
    private_subnets = [
      {
        name              = "aws-kubernetes-infra-project-private-subnet-us-east-1a"
        availability_zone = "us-east-1a"
        cidr_block        = "10.0.0.128/26"
      },
      {
        name              = "aws-kubernetes-infra-project-private-subnet-us-east-1b"
        availability_zone = "us-east-1b"
        cidr_block        = "10.0.0.192/26"
      }
    ]
  }
}