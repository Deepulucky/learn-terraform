variable "sample" {
    default = 100
}

output "sample1" {
    value = var.sample
}

output "sample2"{
    value = "value is ${var.sample}"
}

variable "mapex"{
    default = {
        devops ={
            name = "devops"
            course = "devops"
            duration = "100hrs"
        }
        AWS ={
            name = "devops"
            course = "AWS"
            duration = "100hrs"
        }
    }
}

output "sample3"{
    value = var.mapex["devops"]
}
output "sample4"{
    value = "course value from map ${var.mapex["AWS"].course}"
}

variable "listex"{
    default = [
        "DevOps",
        "AWS",
        "Azure"
    ]
}

output "sample5"{
    value = "value from list ${var.listex[2]}"
}