resource "aws_route_table_association" "jenkins-server-subnet-association" {
  subnet_id      = aws_subnet.jenkins-server-subnet.id
  route_table_id = aws_route_table.jenkins-server-route-table.id
}