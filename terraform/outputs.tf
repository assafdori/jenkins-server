output "ec2_instance_ip" {
  value = aws_instance.jenkins-server-instance.public_ip
}
