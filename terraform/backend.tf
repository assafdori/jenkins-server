terraform {
  backend "s3" {
    bucket  = "jenkins-server-terraform-state-remote"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
