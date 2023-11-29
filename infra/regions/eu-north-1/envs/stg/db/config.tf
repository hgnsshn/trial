terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "trial-tfstate"
    key    = "network/terraform.tfstate"
    region = "eu-north-1"
  }
}

provider "aws" {
  region = "eu-north-1"
  shared_config_files = ["${getenv("HOME")}/.aws/config"]
  shared_credentials_files = ["${getenv("HOME")}/.aws/credentials"]
}
