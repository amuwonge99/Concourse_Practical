provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "s3 bucket" {
  bucket = "gus-versus-the-world"
}
