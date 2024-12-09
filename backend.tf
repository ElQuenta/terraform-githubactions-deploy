terraform {
  backend "s3" {
    bucket         = "terraform-block-execution"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tfstate_locking"
    encrypt        = true
  }
}