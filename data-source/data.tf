data "aws_ec2_spot_price" "example" {
  instance_type     = "t3.medium"
  availability_zone = "us-east-1a"

  filter {
    name   = "product-description"
    values = ["Linux/UNIX"]
  }
}

output "price"{
    value = data.aws_ec2_spot_price.example.spot_price
}

variable "security_group_id" {}

data "aws_security_group" "selected" {
  name = "allow-all"
}

output "security_grp" {
    value = data.aws_security_group.selected.id
}