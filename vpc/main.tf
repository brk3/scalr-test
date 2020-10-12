terraform {
  backend "remote" {
    hostname = "paul-demo.scalr.io"
    organization = "env-t4p2iaimil6t158"  // e.g. org-t4737mmm538mabc
    workspaces {
      name = "paul-demo-workspace"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
