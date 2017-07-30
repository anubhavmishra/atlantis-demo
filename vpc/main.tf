#### Terraform Remote State Backend
terraform {
  backend "s3" {
    bucket = "cfgmgmtcamp"
    key    = "vpc/terraform.tfstate"
    region = "us-west-2"
  }
}