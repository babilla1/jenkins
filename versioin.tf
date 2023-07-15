terraform {
  backend "s3" {
    bucket         = "babilla-terraform-state"
    key            = "jenkins/jenkins.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.7.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"


}