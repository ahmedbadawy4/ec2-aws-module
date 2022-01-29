locals {
  aws_tags = {
    "Name"        = var.ec2_name
    "Owner"       = var.owner
    "Environment" = var.environment
    "Region"      = var.region
  }
}