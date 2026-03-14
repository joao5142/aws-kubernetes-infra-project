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

variable "remote_backend" {
  type = object({
    s3_bucket_name         = string
    dynamodb_table_name    = string
    dynamodb_billing_mode  = string
    dynamodb_hash_key      = string
    dynamodb_hash_key_type = string
  })
  default = {
    s3_bucket_name         = "remote-backend-bucket-joaop"
    dynamodb_table_name    = "dynamodb-state-locking-table"
    dynamodb_billing_mode  = "PAY_PER_REQUEST"
    dynamodb_hash_key      = "LockID"
    dynamodb_hash_key_type = "S"
  }
}
