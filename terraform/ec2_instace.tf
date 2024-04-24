resource "aws_instance" "jenkins-server-instance" {
  ami             = var.aws_ami  # Specify the appropriate AMI ID
  instance_type   = "t4g.nano"
  security_groups = [aws_security_group.jenkins-server-security-group.id]
  subnet_id       = aws_subnet.jenkins-server-subnet.id
  key_name        = "ssh-key-resume-server"


  tags = {
    Name = var.instance_name
  }
}