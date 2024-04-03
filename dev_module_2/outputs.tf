output "ec2_id_test" {
  value = aws_instance.web_servers.public_ip
  #value = [for instance in aws_instance.web_servers : instance.public_ip]
}
