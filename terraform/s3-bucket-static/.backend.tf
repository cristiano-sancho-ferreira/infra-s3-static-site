terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.56.0"
    }
  }
  backend "s3" {
    bucket = "sancho-terraform-state"
    key    = "state/aws/sdlf/sdlf-cicd/terraform.tfstate"
    region = "us-east-1"
  }
}
