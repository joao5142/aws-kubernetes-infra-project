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
