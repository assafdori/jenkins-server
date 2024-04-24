resource "aws_internet_gateway" "jenkins-server-internet-gateway" {
  vpc_id = aws_vpc.jenkins-server-vpc.id
}