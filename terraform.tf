provider "aws" {
  region     = "ap-south-1"
  profile = "mudit"

}
resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
