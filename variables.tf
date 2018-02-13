variable "aws_region" {}
variable "aws_profile" {}
data "aws_availability_zones" "available" {}
variable "vpc_cidr" {}

variable "cidrs" {
  type = "map"
}

variable "domain_name" {}
variable "domain_name_sufix" {}
variable "db_instance_class" {}
variable "db_name" {}
variable "dbuser" {}
variable "dbpassword" {}
variable "dev_instance_type" {}
variable "dev_ami" {}
variable "key_name" {}
variable "public_key_path" {}
variable "elb_healthy_threshold" {}
variable "elb_unhealthy_threshold" {}
variable "elb_interval" {}
variable "elb_timeout" {}
variable "lc_instance_type" {}
variable "asg_min" {}
variable "asg_max" {}
variable "asg_grace" {}
variable "asg_cap" {}
variable "asg_hct" {}
variable "delegation_set" {}
variable "route53_zone" {}
