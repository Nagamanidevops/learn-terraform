variable "componets"{
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

locals {
    
    instance_type = { for k, v in var.componets : k => v.instance_type}
    name = { for k, v in var.componets : k => v.name}

}

output "instance_type"{
    value = locals.instance_type
}
output "name"{
    value = locals.name
}