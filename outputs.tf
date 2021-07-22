resource "local_file" "ansible_inventory"{
     content= templatefile("inventory.tmpl",
     {
     master_public_ip= aws_instance.inst.*.public_ip
     worker_public_ip= aws_instance.inst1.*.public_ip
     }
     )
     filename= "inventory"
}
