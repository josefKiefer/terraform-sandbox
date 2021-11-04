# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 3.0"
#     }
#   }
# }

variable "aws_access_key" {}
variable "aws_secret_key" {}

provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "first_ec2_instance" {
  ami           = "ami-02e136e904f3da870"
  instance_type = "t2.micro"
}

output "instance" {
  value = aws_instance.first_ec2_instance.ami
}
