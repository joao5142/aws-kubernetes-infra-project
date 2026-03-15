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

variable "eks" {
  type = object({
    ecr_repositories  = list(string)
  })
  default = {
    ecr_repositories = [
      "backend1",
      "backend2",
    ]
  }
}