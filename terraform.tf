terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region = "ap-south-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
resource "aws_s3_bucket" "bukets" {
  bucket = "my-tf-test-bucket-for-task1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
