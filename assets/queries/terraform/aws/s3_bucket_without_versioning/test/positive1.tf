provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

resource "aws_s3_bucket" "positive1" {
  bucket = "my-test-bucket"
  acl    = "private"

  versioning {
    enabled = false
  }

  tags = {
    Name        = "My bucket"
  }
}
