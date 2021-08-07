resource "aws_spot_instance_request" "cheapworker" {
  count                  = local.LENGTH
  ami                    = "ami-074df373d6bafa625"
  spot_price             = "0.0031"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-083a944fa2575b4b6"]
  wait_for_fulfillment   = true
  spot_type              = "persistent"

  tags                   = {
    Name                 = element(var.COMPONENTS, count.index)
  }
}

resource "aws_ec2_tag" "name-tag" {
  count                 = local.LENGTH
  resource_id           = element(aws_spot_instance_request.cheapworker.*.spot_instance_id, count.index)
  key                   = "NAME"
  value                 = element(var.COMPONENTS, count.index )
}

resource "null_resource" "run-shell-scripting" {
  count                 = local.LENGTH
  provisioner "remote-exec" {
    connection {
      host              = element(aws_spot_instance_request.cheapworker.*.spot_instance_id, count.index)
      user              = "centos"
      password          = "DevOps321"
    }

    command = [
      "cd /home/centos",
      "git clone https://github.com/ChavitiSathish/shellscripting.git",
      "cd shell-scripting/roboshop",
      "sudo make ${element(var.COMPONENTS, count.index)}"
    ]
  }
}

locals {
  LENGTH               = length(var.COMPONENTS)
}