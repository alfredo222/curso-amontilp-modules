output "s3_bucket_name" {
    description = "nombre del bucket s3"
    value = aws_s3_bucket.this.bucket_domain_name
}

output "s3_bucket_arn" {
    description = "s3 bucket arn info"
    value = aws_s3_bucket.this.arn
}