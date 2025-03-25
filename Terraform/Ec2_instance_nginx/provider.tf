terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12.0"
    }
  }
  # if we want to store the state file in s3 not on local 
  backend "s3" {
    bucket = "ashwinbuck"
    key = "state/terraform.tfstate"  
    region ="us-east-1"
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



