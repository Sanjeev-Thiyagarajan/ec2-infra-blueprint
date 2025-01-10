terraform {
  backend "remote" {
    organization = "sanjeevkt720"

    workspaces {
      name = "infrastructure-iac"
    }
  }
}
module "my_ec2" {
  source  = "app.terraform.io/sanjeevkt720/ec2-infra/aws"
  version = "1.0.0"
  name          = "my-app-test"
  instance_type = "t2.micro"
  subnet = "aws_subnet.subnet3.id"
}


