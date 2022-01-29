plugin "aws" {
  enabled = true
  deep_check = true
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/myapp"
  profile                 = "be-dev"
}
rule "aws_resource_missing_tags" {
  enabled = true
  tags = [
    "Environment",
    "Region",
    "Name",
    "Owner",
  ]
}