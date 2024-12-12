terraform {
  backend "s3" {
    bucket = "remote-state-tf-jp"
    key    = "expense-dev-sg"
    region = "us-east-1"
    dynamodb_table = "expense-tf"
  }  
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.72.0"
    }
  }
}

provider "aws" {
   region = "us-east-1"
}