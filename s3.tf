# Create an S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket-iac-test"
  versioning {
    enabled = true
  }
}

