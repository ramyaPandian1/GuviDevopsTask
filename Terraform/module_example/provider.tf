terraform {
   required_providers {
     aws = {
        source  = "hashicorp/aws"
      version = "5.12.0"
     }
   }
    backend "s3" {
    bucket = "ashwinbuck"
    key = "state/terraform.tfstate"  
    region ="us-east-1"
  }
}

provider "aws" {
  region = "us-east-2"
}
