resource "aws_s3_bucket" "this" {
  bucket = var.bucketName
  versioning {
    enabled = var.version_enabled
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "aws:kms"
      }
    }
  }

  tags = local.tags

}
