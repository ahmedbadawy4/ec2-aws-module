variable "instance_type" {
  default = "t2.micro"
}

variable "volume_size" {
  default     = "8"
  description = "root volume size"
}

variable "ec2_name" {
  default = ""
}

variable "public_key" {}

variable "volume_protection" {
  default = "true"
}

variable "owner" {
  default = ""
}

variable "region" {
  default = ""
}

variable "environment" {
  default = ""
}

variable "volume_encryption" {
  default = "true"
}

variable "metadata_http_endpoint " {
  default = "enabled"
}

variable "metadata_http_tokens " {
  default = "required"
}