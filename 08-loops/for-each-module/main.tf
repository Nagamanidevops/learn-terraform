
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

module "ec2"{
    source = "./module"
    
    for_each = var.componet
    instance_type = each.value.instance_type
    name = each.value.name 
}

output "public-ip"{
    value = {
    for k, v in module.ec2 : k => v[ec2].public_ip
}