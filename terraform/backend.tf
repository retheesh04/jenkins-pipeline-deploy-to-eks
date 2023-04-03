terraform {
  backend "s3" {
    bucket = "retheesh-bucket001"
    region = "ap-south-1"
    key = "eks/terraform.tfstate"
  }
}
