#### Remote state imported from VPC terraform project ###################################
data "terraform_remote_state" "network" {
  backend = "s3"
  config {
    bucket = "cfgmgmtcamp"
    key    = "vpc/terraform.tfstate"
    region = "us-west-2"
  }
  environment = "${terraform.env}"
}

##########################################################################################

#### Create EC2 Instances ################################################################
module "ec2_instance" {
  source = "github.com/anubhavmishra/tf_aws_ec2_instance?ref=v0.1.4"
  instance_type = "${var.instance_type}"
  instance_name = "${var.instance_name_prefix}-${terraform.env}"
  user_data = "${path.module}/templates/userdata"
  subnet_id = "${element(data.terraform_remote_state.network.public_subnets, 1)}"
  number_of_instances = "${var.number_of_instances}"
}


#### Terraform Remote State Backend ######################################################
terraform {
  backend "s3" {
    bucket = "cfgmgmtcamp"
    key    = "cfgmgmtcamp-demo/terraform.tfstate"
    region = "us-west-2"
  }
}
###########################################################################################