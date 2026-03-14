resource "aws_s3_bucket" "remote_backend" {
  bucket = var.remote_backend.s3_bucket_name
  tags = {
    Name = var.remote_backend.s3_bucket_name
  }
}

resource "aws_s3_bucket_versioning" "remote_backend" {
  bucket = aws_s3_bucket.remote_backend.id

  versioning_configuration {
    status = "Enabled"
  }
}