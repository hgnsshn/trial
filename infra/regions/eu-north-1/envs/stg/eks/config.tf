terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.27.0"
    }
  }

  backend "s3" {
    bucket = "trial-tfstate"
    key    = "eks/terraform.tfstate"
    region = "eu-north-1"
  }
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "${var.project_name}-tfstate"
    key = "network/terraform.tfstate"
    region = "eu-north-1"
  }
}

provider "aws" {
  region = "eu-north-1"
  shared_config_files = ["${var.USER_HOME}/.aws/config"]
  shared_credentials_files = ["${var.USER_HOME}/.aws/credentials"]
}
