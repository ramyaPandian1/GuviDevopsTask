terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12.0"
    }
  }
}

# Provider configuration for us-east-2
provider "aws" {
  alias  = "us_east_2"
  region = "us-east-2"
}

# Provider configuration for us-east-1
provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}
