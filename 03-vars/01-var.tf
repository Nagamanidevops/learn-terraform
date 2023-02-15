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