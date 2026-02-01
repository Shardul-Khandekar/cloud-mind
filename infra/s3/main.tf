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
  region = var.aws_region
}

locals {
  name_prefix = "${var.project_name}"
  bucket_name = "${local.name_prefix}-raw-data-bucket"
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket" "cloudmind_raw" {
  bucket = local.bucket_name
  tags = merge(local.common_tags, {
    Purpose = "DataIngestion"
  })
}