provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "neeha-s3bucket-3-3-26"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "neeha-date-dblocks3-3-26"
    encrypt        = true
  }
}
