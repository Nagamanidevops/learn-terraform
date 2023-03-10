resource "aws_instance" "web" {
  for_each = var.componet
  ami           = data.aws_ami.centos8.id
  instance_type = each.value.instance_type
  tags = {
    Name = each.value.name
  }
}

data "aws_ami" "centos8" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}


variable "componet"{
    default  = {
      cart = {
      name = "cart",
      instance_type = "t3.medium"
    }
      component = {
      name = "catalog",
      instance_type = "t3.medium"
}
}
}
