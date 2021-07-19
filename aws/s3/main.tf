provider "aws" {
    region = "us-east-2"
}

resource "aws_s3_bucket" "bucket-01" {
    bucket = "sankar-bucket-01"
}