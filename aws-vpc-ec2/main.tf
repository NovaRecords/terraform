# EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-014dd8ec7f09293e6"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id

  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "web-server"
  }
}
