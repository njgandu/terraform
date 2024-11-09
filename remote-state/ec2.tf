resource "aws_instance" "ec2-remotestate" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t3.micro"

  tags = {
    Name ="ec2remotestate"
  }
}