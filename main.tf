terraform {
  backend "remote" {
    organization = "sanjeevkt720"

    workspaces {
      name = "infrastructure-iac"
    }
  }
}
# https://github.com/Sanjeev-Thiyagarajan/infrastructure-iac/tree/main/modules/ec2-app

module "my_ec2" {
  source        = "https://github.com/Sanjeev-Thiyagarajan/infrastructure-iac/tree/main/modules/ec2-app"
  name          = "my-app-test"
  instance_type = "t2.micro"
}
