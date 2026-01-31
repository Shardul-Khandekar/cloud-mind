output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.cloudmind_raw.bucket
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.cloudmind_raw.arn
}

output "bucket_domain_name" {
  description = "The regional endpoint for accessing the bucket"
  value       = aws_s3_bucket.cloudmind_raw.bucket_regional_domain_name
}