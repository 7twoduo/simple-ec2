
output "instance1" {
  value = aws_instance.first_instance.associate_public_ip_address
}
output "instance2" {
  value = aws_instance.second_instance.associate_public_ip_address
}
