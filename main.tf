terraform {
  backend "remote" {
    organization = "sanjeevkt720"

    workspaces {
      name = "infrastructure-iac"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

module "my_ec2" {
  source  = "app.terraform.io/sanjeevkt720/ec2-infra/aws"
  version = "1.0.0"
  name          = "my-app-test"
  instance_type = "t2.micro"
  subnet = "aws_subnet.subnet3.id"
}


