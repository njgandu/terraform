terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.72.0"
    }
  }

  backend "s3" {
    bucket = "remote-state-tf-jp"
    key    = "expense-bastion"
    region = "us-east-1"
    dynamodb_table = "expense-tf"
}
}
provider "aws" {
    region = "us-east-1"
}
