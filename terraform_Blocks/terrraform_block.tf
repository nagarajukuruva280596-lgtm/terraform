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
  profile = "default"   //loged in aws account
  region = "ap-south-1"  //aws region
}

resource "aws_instance" "firstinstance"{
    ami = "ami-02b8269d5e85954ef"   //EC2 AMI to lunch
    instance_type = "t3.micro"     //EC2 type
    tags = {
        "Name" = "web_Server"  //description of EC2
    }
    user_data = file("${path.module}/app.sh")
}
