module "ec2"{
    source = "./ec2"
    security_group_id = [var.security_group_id]
}

module "s3"{
    source = "./s3"
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