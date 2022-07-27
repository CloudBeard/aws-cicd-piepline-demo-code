resource "aws_s3_bucket" "b" {
  bucket = "terratest-s3-mario"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

    versioning {
    enabled = true
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}