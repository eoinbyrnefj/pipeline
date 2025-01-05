terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67.0"
    }
  }

  backend "s3" {
    bucket         	   = "uniquename"
    key              	   = "terraform.tfstate"
    region         	   = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"
}
