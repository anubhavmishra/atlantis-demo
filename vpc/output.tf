output "public_subnets" {
  value = "${var.vpc_public_subnets}"
}

output "vpc_id" {
  value = "${var.vpc_id}"
}

output "public_route_table_ids" {
  value = "${var.vpc_public_route_table_ids}"
}

output "default_security_group_id" {
  value = "${var.vpc_default_security_group_id}"
}

output "igw_id" {
  value = "${var.igw_id}"
}
