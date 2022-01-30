data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }
}

resource "aws_key_pair" "terra-test" {
  key_name   = "terra-test-key"
  public_key = var.public_key
  tags       = local.aws_tags
}

resource "aws_instance" "terratest" {
  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = var.instance_type
  key_name      = aws_key_pair.terra-test.key_name
  metadata_options {
    http_tokens = "required"
    http_endpoint = "disabled" 
  }
  root_block_device {
    volume_size           = var.volume_size
    delete_on_termination = var.volume_protection
    encrypted             = true
  }
  tags = local.aws_tags
}
