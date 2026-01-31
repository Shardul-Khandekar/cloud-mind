terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"    # >5.0 and <6.0
    }
  }
}

# Configure AWS Provider
# Credentials are taken from AWS_PROFILE environment variable or ~/.aws/credentials
provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "cloudmind_raw" {
  bucket = "cloudmind-raw-data"
  tags = {
    Project   = "CloudMind"
    ManagedBy = "Terraform"
    Step      = "1"
  }
}