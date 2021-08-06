module "sg" {
  source = "./sg"
}

module "ec2" {
  depends_on = [module.sg]
  source = "./ec2"
  SG_ID  = module.sg.SG_Id
}

provider "aws" {
  region = "us-east-1"
}