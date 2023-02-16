module "ec2"{
    source = "./ec2"
    security_group_id = module.sg.security_group_id
}

module "sg"{
    source = "./sg"
}


terraform {
   backend "s3" {
     bucket = "terraform-d70"
     key    = "06-module/terraform.tfstate"
     region = "us-east-1"
     }
}

provider "aws"{
    region = "us-east-1"
}