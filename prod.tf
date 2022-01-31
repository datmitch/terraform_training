provider "aws" {
  shared_credentials_file = "/Users/terraform/.aws/credentials"
  profile = "default"
  region  = "us-west-2"
}

resource "aws_s3_bucket" "prod_tf_course" {
  bucket = "tf-course-20220130"
  acl    = "private"
}

resource "aws_default_vpc" "default" {}
