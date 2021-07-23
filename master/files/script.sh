#!/bin/bash

sudo mkdir admin/

sudo cp /etc/kubernetes/admin.conf admin/

sudo yum install git -y
 
cd admin/;sudo git init;sudo git add .;sudo git commit -m 'version 1' .;sudo git push https://prabal03:prabalagrawal0307@github.com/prabal03/k8s-confile.git --all
