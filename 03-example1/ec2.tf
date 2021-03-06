resource "aws_instance" "sample" {
  ami                    = "ami-074df373d6bafa625"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags                   = {
    Name                 = "Sample"
  }
}

//Create A Security Group

resource "aws_security_group" "allow_ssh" {
  name                   = "allow_ssh"
  description            = "allow_ssh"

  ingress {
      description        = "SSH"
      from_port          =  22
      to_port            =  22
      protocol           = "tcp"
      cidr_blocks        = ["0.0.0.0/0"]
  }

  egress  {
      from_port          = 0
      to_port            = 65535
      protocol           = "tcp"
      cidr_blocks        = ["0.0.0.0/0"]
  }


  tags                   = {
    Name                 = "allow_ssh"
  }
}

output "ec2attributes" {
  value = aws_instance.sample
}
/*output "sg-attributes" {
  value = aws_security_group.allow_ssh
}*/

provider "aws" {
  region = "us-east-1"
}