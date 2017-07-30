variable "vpc_id" {
}

variable "vpc_public_subnets" {
  default = []
}

variable "vpc_public_route_table_ids" {
  default = []
}

variable "vpc_default_security_group_id" {}

variable "igw_id" {}