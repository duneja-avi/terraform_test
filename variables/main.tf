variable "vpcname" {
    type = string
    default = "myvpc"
}

variable "sshport" {
  type = number
  default = 22
}

variable "enabled" {}
    default = true
  
}
variable "mylist" {
    type = list(string)
    default = ["key1", "key2"]
}

variable "mymap"{
    type = map
    default = {
        Key1 = "Value1"
        Key2 = "Value2"
    }
}

variable "inputname"{
    type = string
    description = "Set the name of the vpc"

}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
    name = var.inputname
}
