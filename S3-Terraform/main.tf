provider "aws" {
  version = "~> 3.0"
  region  = var.region
}

resource "aws_s3_bucket" "od-logs" {
  bucket = "octopusdeploylogs92"
  acl    = "private"
}

resource "aws_s3_bucket_object" "tasklogs" {
  bucket = aws_s3_bucket.od-logs.id
  acl = "private"
  key = "taskLogs/"

  depends_on = [ aws_s3_bucket.od-logs ]
}

resource "aws_s3_bucket_object" "artifacts" {
  bucket = aws_s3_bucket.od-logs.id
  acl = "private"
  key = "artifacts/"

  depends_on = [ aws_s3_bucket.od-logs ]
}

resource "aws_s3_bucket_object" "repository" {
  bucket = aws_s3_bucket.od-logs.id
  acl = "private"
  key = "repository/"

  depends_on = [ aws_s3_bucket.od-logs ]
}