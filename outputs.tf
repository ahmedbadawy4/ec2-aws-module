output "public_ip" {
  value = aws_instance.terratest.public_ip
}
