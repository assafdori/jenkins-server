resource "aws_security_group" "jenkins-server-security-group" {
  name        = var.security_group_name
  description = "Security group for Jenkins server"
  vpc_id      = aws_vpc.jenkins-server-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_ingress_22
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = var.cidr_ingress_8080
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_egress_ips
  }
}
