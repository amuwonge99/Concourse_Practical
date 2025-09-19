provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "gus-versus-the-world1"
   force_destroy = true
}
