provider "aws" {
  region  = "ap-northeast-1"
  profile = "terraform"

  default_tags {
    tags = {
      Env    = "dev"
      System = "example"
    }
  }
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.42.0"
    }
  }

  required_version = "1.4.6"
}