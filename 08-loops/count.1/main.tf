resource "aws_instance" "web" {
  count = length(var.componet)
  ami           = data.aws_ami.centos8.id
  instance_type = "t3.micro"
  tags = {
    Name = var.componet[count.index]
  }
}

data "aws_ami" "centos8" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

output "publicip"{
   value = aws_instance.web.*.public_ip
}

variable "componet"{
    default  = {
      cart = {
      name = "cart",
      instance_type = "t3.medium"
    }
      cart = {
      name = "catalog",
      instance_type = "t3.medium"
}
}
}
