resource "aws_instance" "inst1" {
    depends_on=[
         aws_instance.inst
]
    count= length(var.aws-worker-tag)
    ami= var.aws-ami
    instance_type= var.aws-instance-type
    availability_zone= var.aws-availability-zone
    key_name= var.aws-key-name
    associate_public_ip_address= var.public-ip
    tags= {
          Name= element(var.aws-worker-tag, count.index)
     }
}

resource "null_resource" "null" {
   depends_on=[
          aws_instance.inst1
            ]
      provisioner "local-exec" {
              command= "ansible-playbook configuration.yml"
           }
}
