variable "sample"{
    default = 10
}

output "sample"{
  value = var.sample
    }

variable "sample2"{
    default = "string"
}

output "sample2"{
    value = var.sample2
}

variable "sample3"{
    default = 10
}

output "sample3"{
    value = 10
}

variable "sample4"{
    default = true
}

output "sample4"{
    value = var.sample4
}

variable "sample5"{
    
    default = 180
}

output "sample5"{
    value = var.sample5
}

variable "sample6"{
    
    default = [
    100,
    "string",
    "true"
    ]
}

output "sample6"{
    value = var.sample6[1]
}

variable "sample7"{
    default = {
        string = "abcxyz",
        number = 100,
        boolean = true 
    }
}

output "sample7"{
    value = var.sample7["number"]
}


## variables from tfvars

variable demo1{
    }
output demo1{
      value = var.demo1
    }


##variables from shell environment shell variables

variable "demo2"{
    default =""
    }
    
    output demo2{
        value = var.demo2
    }
