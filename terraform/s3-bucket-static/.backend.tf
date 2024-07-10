terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.18.0"
    }
  }

  backend "s3" {
    bucket = "sancho-terraform-state"
    key    = "aws/terraform.tfstate"
    region = "us-east-1"
  }
}
