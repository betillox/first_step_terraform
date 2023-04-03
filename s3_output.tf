# Output the S3 bucket URL
output "s3_bucket_url" {
  value = "s3://${aws_s3_bucket.my_bucket.id}"
}

