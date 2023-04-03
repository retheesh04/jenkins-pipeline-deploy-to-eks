terraform {
  backend "s3" {
    bucket = "retheesh-bucket001"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}
