terraform {
  backend "s3" {
    bucket = "terraform-state-niraj"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}