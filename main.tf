#creating resources
resource "aws_s3_bucket" "ank_bucket" {
  bucket = "bucketgithubaction"

  tags = {
    owner   = var.owner
    purpose = var.purpose
  }

  acl    = "private"
} 

resource "aws_s3_bucket_public_access_block" "ank_bucket_public_access_block" {
  bucket = aws_s3_bucket.ank_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}