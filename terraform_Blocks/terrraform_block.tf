terraform {
  required_version = "~> 1.14.0" //terraform version
  required_providers {
    aws = {
        source = "hashicorp/aws" //terraform aws Provider
        version = "~> 6.0"  //AWS version
    }
  }
}

provider "aws" {
  profile = "default"
  region = "ap-south-1"
}
