#### Create EC2 Instances ################################################################
module "ec2_instance" {
  source              = "github.com/anubhavmishra/tf_aws_ec2_instance?ref=v0.1.4"
  instance_type       = "${var.instance_type}"
  instance_name       = "${var.instance_name_prefix}-${terraform.env}"
  user_data           = "${path.module}/templates/userdata"
  subnet_id           = "${element(data.terraform_remote_state.network.public_subnets, 1)}"
  number_of_instances = "${var.number_of_instances}"
}



