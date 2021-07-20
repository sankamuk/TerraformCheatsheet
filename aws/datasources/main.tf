provider "aws" {
    region = "us-east-2"
}

data "aws_s3_bucket" "bucket-01" {
    bucket = "sankar-bucket-01"
}

resource "aws_iam_policy" "bucket-01-policy" {
  name = "bucket-01-policy"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:ListBucket"
            ],
            "Resource": "${data.aws_s3_bucket.bucket-01.arn}"
        }
    ]
}
EOF
}

