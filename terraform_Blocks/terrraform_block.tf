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

resource "aws_instance" "firstinstance"{
    ami = "ami-02b8269d5e85954ef"
    instance_type = "t3.micro"
    tags = {
        description = "web_Server"
    }
}
