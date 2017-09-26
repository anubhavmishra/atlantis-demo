#### Terraform Remote State Backend
terraform {
  backend "s3" {
    bucket = "atlantis-demo"
    key    = "vpc/terraform.tfstate"
    region = "us-west-2"
  }
}