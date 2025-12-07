terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "ec2-sanz" {
  instance_type = "t3.micro"
  ami           = "ami-02f3f602d23f1659d"
  tags = {
    ambiente = "dev"
    Name = "ec2-sanz"
  }
  vpc_security_group_ids = [ "" ]
}
