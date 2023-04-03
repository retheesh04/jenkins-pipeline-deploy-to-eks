terraform {
  backend "s3" {
    bucket = "radishradi"
    region = "ap-south-1"
    key = "eks/terraform.tfstate"
  }
}
