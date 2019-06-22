provider "aws" {
  profile    = "default"
  region     = "ap-northeast-1"
}

resource "aws_s3_bucket" "terraform_state" {
    bucket = "terraform-kenkono-state"

    versioning {
        enabled = true
    }

    lifecycle {
        prevent_destroy = true
    }
}