terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "managed" {
  bucket = "state-ops-managed-170638199494"
  
  tags = {
    Name      = "Managed Bucket"
    ManagedBy = "Terraform"
  }
}

resource "aws_s3_bucket" "example1" {
  bucket = "state-ops-example1-170638199494"
  
  tags = {
    Name = "Example 1"
  }
}

resource "aws_s3_bucket" "example2" {
  bucket = "state-ops-example2-170638199494"
  
  tags = {
    Name = "Example 2"
  }
}
resource "aws_s3_bucket" "imported" {
  bucket = "state-ops-unmanaged-170638199494"

  tags = {
    Name      = "Imported Bucket"
    ManagedBy = "Terraform"
  }
}
