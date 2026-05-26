# aws_s3_bucket resources

resource "aws_s3_bucket" "solutionhub_prod_dump" {
  bucket              = "solutionhub-prod-dump"
  force_destroy       = false
  object_lock_enabled = false
  region              = "us-east-1"
}


