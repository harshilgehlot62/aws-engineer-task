resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "alb_logs" {
  bucket        = "sample-alb-logs-bucket-${random_id.bucket_id.hex}"
  force_destroy = true
}
