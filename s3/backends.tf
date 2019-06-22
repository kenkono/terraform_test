terraform {
  backend "s3" {
    bucket = "terraform-kenkono-state"
    key = "global/s3/terraform.tfstate"
    region = "ap-northeast-1"
  }
}