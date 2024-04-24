resource "aws_route_table" "jenkins-server-route-table" {
  vpc_id = aws_vpc.jenkins-server-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.jenkins-server-internet-gateway.id
  }
}