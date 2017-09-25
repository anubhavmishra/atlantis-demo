output "instance_ids" {
  value = "${module.ec2_instance.ec2_instance_ids}"
}

output "public_ips" {
  value = "${module.ec2_instance.ec2_public_ips}"
}
