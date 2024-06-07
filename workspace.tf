variable "instance_type" {
    type = map

    default = {
        default = "t2.nano"
        dev = "t2.micro"
        stg = "t2.medium"
    }
}

resource "aws_instance" "workspace" {
    ami = "ami-00beae93a2d981137"
    instance_type = lookup(var.instance_type,terraform.workspace)
}                               