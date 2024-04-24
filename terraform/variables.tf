variable "provider_region" {
  description = "The region in which to setup provider region."
  default     = "us-east-1"
}

variable "instance_name" {
  description = "The EC2 instance name of the jenkins server."
  default     = "jenkins-server"
}

variable "aws_ami" {
  description = "Defines which AMI is used for the EC2 host server of web application."
  default     = "ami-07b3a3a3ddede3183"
}

variable "security_group_name" {
  description = "The name which the security group will be called."
  default     = "jenkins-server-security-group"

}

variable "cidr_ingress_22" {
  description = "Defines which IPs are allowed to access via SSH 22."
  default     = ["0.0.0.0/0"]
}

variable "cidr_ingress_8080" {
  description = "Defines which IPs are allowed to access management port 8080."
  default     = ["0.0.0.0/0"]
}

variable "cidr_egress_ips" {
  description = "Defines to which IPs outbound traffic is allowed."
  default     = ["0.0.0.0/0"]
}