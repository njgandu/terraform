terraform {
  backend "s3" {
    bucket = "remote-state-tf-jp"
    key    = "remote-state-1"
    region = "us-east-1"
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