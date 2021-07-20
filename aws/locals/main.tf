provider "aws" {
    region = "us-east-2"
}

locals {
    bucket_name_prefix = "com-sanmuk"
    bucket_name_number = "1"
}

resource "aws_s3_bucket" "bucket-01" {
    bucket = "${local.bucket_name_prefix}-${local.bucket_name_number}"
}