
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
    for_each = var.component
    instance_type = each.value.instance_type
    name = each value.name 
    
}