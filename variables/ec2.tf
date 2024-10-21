resource "aws_instance" "web" {
  ami           = var.ami-id
  instance_type = var.instance-type

  tags = var.tags
}

resource "aws_security_group" "allow_all" {
  name        =  var.sg_name
  description =  var.sg_description

   ingress {
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.protocol
    cidr_blocks      = var.allowed_cidr
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.allowed_cidr
  }

  
  
}