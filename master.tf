resource "aws_instance" "inst" {
    count= length(var.aws-master-tag) 
    ami= var.aws-ami
    instance_type= var.aws-instance-type
    availability_zone= var.aws-availability-zone
    key_name= var.aws-key-name
    associate_public_ip_address= var.public-ip
    tags= {
          Name= element(var.aws-master-tag, count.index)
     }
}


