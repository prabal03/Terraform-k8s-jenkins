variable "aws-instance-type" {}

variable "aws-availability-zone"{}

variable "aws-key-name" {}

variable "aws-ami" {}

variable "aws-master-tag" {
     type= list
     default= ["master"]
}

variable "aws-worker-tag"{
        type=list
        default=["worker1","worker2"]
}

variable "public-ip" {}







